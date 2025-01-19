package Java.dbImpl;

import Java.elements.ProductBean;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import jakarta.servlet.ServletContext;

public class ProductServiceImpl {

    private static final String CSV_FILE_PATH = "/WEB-INF/stock.csv"; // Path to store products

    // Helper method to generate unique product IDs
    private String generateProductId() {
        return UUID.randomUUID().toString();
    }

    // **1 Add Product (Write to CSV)**
    public String addProduct(ProductBean product, ServletContext context) {
        String status = "Product Registration Failed!";
        
        try {
            String csvFilePath = context.getRealPath(CSV_FILE_PATH);
            File file = new File(csvFilePath);
            
            boolean isNewFile = !file.exists(); // Check if file exists
            
            FileWriter fw = new FileWriter(file, true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);
            
            // Generate product ID if not present
            if (product.getProdId() == null || product.getProdId().isEmpty()) {
                product.setProdId(generateProductId());
            }

            // Write product data to CSV (Append mode)
            if (isNewFile) {
                pw.println("prodId,prodName,prodType,prodPrice,prodQuantity,prodImage"); // Write header if file is new
            }
            
            pw.println(product.getProdId() + "," + product.getProdName() + "," + product.getProdType() + ","
                    + product.getProdPrice() + "," + product.getProdQuantity() + ","
                    + product.getProdImage());

            pw.flush();
            pw.close();
            
            status = "Product Added Successfully with Product ID: " + product.getProdId();
        } catch (IOException e) {
            status = "Error: " + e.getMessage();
            e.printStackTrace();
        }

        return status;
    }

    // ** Get All Products (Read from CSV)**
    public List<ProductBean> getAllProducts(ServletContext context) {
        List<ProductBean> products = new ArrayList<>();
        
        try {
            String csvFilePath = context.getRealPath(CSV_FILE_PATH);
            File file = new File(csvFilePath);
            if (!file.exists()) {
                System.out.println("CSV file not found: " + csvFilePath);
                return products; // Return empty list if file does not exist
            }

            BufferedReader br = new BufferedReader(new FileReader(file));
            String line;
            boolean isFirstLine = true;

            while ((line = br.readLine()) != null) {
                if (isFirstLine) { // Skip CSV header
                    isFirstLine = false;
                    continue;
                }

                String[] values = line.split(",");
                if (values.length == 6) { // Ensure valid data
                    ProductBean product = new ProductBean();
                    product.setProdId(values[0]);
                    product.setProdName(values[1]);
                    product.setProdType(values[2]);
                    product.setProdPrice(Double.parseDouble(values[3]));
                    product.setProdQuantity(Integer.parseInt(values[4]));
                    product.setProdImage(values[5]); // Image Path

                    products.add(product);
                }
            }
            br.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return products;
    }
    
    // **Remove product **
    public String removeProduct(String prodId, ServletContext context) {
        String status = "Product Removal Failed!";
        String csvFilePath = context.getRealPath("/WEB-INF/stock.csv"); // ✅ Ensure this path is correct!

        File file = new File(csvFilePath);
        if (!file.exists()) {
            System.out.println("DEBUG: CSV file not found -> " + csvFilePath);
            return "Error: CSV file not found!";
        }

        boolean found = false;

        try {
            // ✅ Create a temporary file
            File tempFile = new File(csvFilePath + ".tmp");
            BufferedWriter bw = new BufferedWriter(new FileWriter(tempFile));
            PrintWriter pw = new PrintWriter(bw);

            BufferedReader br = new BufferedReader(new FileReader(file));
            String line;
            boolean isFirstLine = true;

            System.out.println("DEBUG: Attempting to remove product ID -> " + prodId);

            while ((line = br.readLine()) != null) {
                if (isFirstLine) {
                    pw.println(line); // Keep the CSV header
                    isFirstLine = false;
                    continue;
                }

                String[] values = line.split(",");
                if (values.length < 6) {
                    continue; // Skip invalid lines
                }

                String currentProdId = values[0].trim();
                System.out.println("DEBUG: Checking Product -> " + currentProdId);

                if (currentProdId.equals(prodId.trim())) {
                    found = true;
                    System.out.println("DEBUG: Removing product -> " + values[1]);
                    continue; // ✅ Skip writing this product (removes it)
                }

                pw.println(line); // ✅ Write back all other products
            }

            br.close();
            pw.flush();
            pw.close();

            // ✅ Replace the original file with the updated one
            if (found) {
                if (file.delete()) {
                    if (tempFile.renameTo(file)) {
                        status = "Product Removed Successfully!";
                        System.out.println("DEBUG: Product removed successfully!");
                    } else {
                        status = "Error: Failed to rename temp file!";
                        System.out.println("DEBUG: Failed to rename temp file!");
                    }
                } else {
                    status = "Error: Failed to delete original CSV file!";
                    System.out.println("DEBUG: Failed to delete original CSV file!");
                }
            } else {
                status = "Error: Product Not Found!";
                System.out.println("DEBUG: Product Not Found in CSV!");
                tempFile.delete(); // Cleanup temp file if no product was removed
            }
        } catch (IOException e) {
            status = "Error: " + e.getMessage();
            e.printStackTrace();
        }

        return status;
    }

}
