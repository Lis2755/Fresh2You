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
        String csvFilePath = context.getRealPath("/WEB-INF/stock.csv");
        String status = "Product Registration Failed!";

        try (BufferedWriter bw = new BufferedWriter(new FileWriter(csvFilePath, true));
             PrintWriter pw = new PrintWriter(bw)) {

            File file = new File(csvFilePath);
            boolean isNewFile = !file.exists();

            // Write CSV Header if file is new
            if (isNewFile) {
                pw.println("prodId,prodName,prodType,prodPrice,prodQuantity,prodImage");
            }

            // Write Product Data
            pw.println(product.getProdId() + "," +
                       product.getProdName() + "," +
                       product.getProdType() + "," +
                       product.getProdPrice() + "," +
                       product.getProdQuantity() + "," +
                       product.getProdImage()); 

            status = "Product Added Successfully!";
        } catch (IOException e) {
            status = "Error: " + e.getMessage();
        }

        return status;
    }

    
    //**Update Product Info**
    public String updateProductWithoutImage(String prodId, ProductBean updatedProduct, ServletContext context) {
        String status = "Product Update Failed!";
        String csvFilePath = context.getRealPath("/WEB-INF/stock.csv");
        String tempCsvFilePath = context.getRealPath("/WEB-INF/stock-temp.csv");

        File file = new File(csvFilePath);
        File tempFile = new File(tempCsvFilePath);

        if (!file.exists()) {
            System.out.println("DEBUG: CSV file not found -> " + csvFilePath);
            return "Error: CSV file not found!";
        }

        boolean updated = false;

        try {
            BufferedWriter bw = new BufferedWriter(new FileWriter(tempFile));
            PrintWriter pw = new PrintWriter(bw);
            BufferedReader br = new BufferedReader(new FileReader(file));

            String line;
            boolean isFirstLine = true;

            System.out.println("DEBUG: Attempting to update product ID -> " + prodId);

            while ((line = br.readLine()) != null) {
                if (isFirstLine) {
                    pw.println(line); // ✅ Keep CSV header
                    isFirstLine = false;
                    continue;
                }

                String[] values = line.split(",");
                if (values.length < 6) continue; // ✅ Skip invalid lines

                String currentProdId = values[0].trim();
                if (currentProdId.equals(prodId.trim())) {
                    updated = true;
                    System.out.println("DEBUG: Updating product -> " + values[1]);

                    // ✅ Write updated product details
                    pw.println(updatedProduct.getProdId() + "," + updatedProduct.getProdName() + ","
                            + updatedProduct.getProdType() + "," + updatedProduct.getProdPrice() + ","
                            + updatedProduct.getProdQuantity() + "," + values[5]); // Keep original image path
                } else {
                    pw.println(line); // ✅ Keep other products unchanged
                }
            }

            br.close();
            pw.flush();
            pw.close();

            // ✅ Replace old CSV with updated one
            if (updated) {
                if (file.delete() && tempFile.renameTo(file)) {
                    status = "Product Updated Successfully!";
                    System.out.println("DEBUG: Product updated successfully!");
                } else {
                    status = "Error: Failed to update stock.csv!";
                    System.out.println("DEBUG: Failed to replace stock.csv!");
                }
            } else {
                status = "Error: Product Not Found!";
                System.out.println("DEBUG: Product Not Found in CSV!");
                tempFile.delete(); // Cleanup temp file if no product was updated
            }
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
        String csvFilePath = context.getRealPath("/WEB-INF/stock.csv");  // ✅ Path to stock.csv
        String tempCsvFilePath = context.getRealPath("/WEB-INF/stock-temp.csv");  // ✅ Path to stock-temp.csv

        File file = new File(csvFilePath);
        File tempFile = new File(tempCsvFilePath); // ✅ Manually create stock-temp.csv

        if (!file.exists()) {
            System.out.println("DEBUG: CSV file not found -> " + csvFilePath);
            return "Error: CSV file not found!";
        }

        boolean found = false;

        try {
            BufferedWriter bw = new BufferedWriter(new FileWriter(tempFile));
            PrintWriter pw = new PrintWriter(bw);
            BufferedReader br = new BufferedReader(new FileReader(file));

            String line;
            boolean isFirstLine = true;

            System.out.println("DEBUG: Attempting to remove product ID -> " + prodId);

            while ((line = br.readLine()) != null) {
                if (isFirstLine) {
                    pw.println(line); // ✅ Keep the CSV header
                    isFirstLine = false;
                    continue;
                }

                String[] values = line.split(",");
                if (values.length < 6) {
                    continue; // ✅ Skip invalid lines
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

            // ✅ If product was removed, rename stock-temp.csv to stock.csv
            if (found) {
                if (file.delete()) { // ✅ Delete old stock.csv
                    if (tempFile.renameTo(file)) { // ✅ Rename stock-temp.csv -> stock.csv
                        status = "Product Removed Successfully!";
                        System.out.println("DEBUG: Product removed successfully!");
                    } else {
                        status = "Error: Failed to rename stock-temp.csv!";
                        System.out.println("DEBUG: Failed to rename stock-temp.csv!");
                    }
                } else {
                    status = "Error: Failed to delete original stock.csv!";
                    System.out.println("DEBUG: Failed to delete original stock.csv!");
                }
            } else {
                status = "Error: Product Not Found!";
                System.out.println("DEBUG: Product Not Found in CSV!");
            }
        } catch (IOException e) {
            status = "Error: " + e.getMessage();
            e.printStackTrace();
        }

        return status;
    }
    
    public ProductBean getProductDetails(String prodId, ServletContext context) {
        String csvFilePath = context.getRealPath("/WEB-INF/stock.csv");

        File file = new File(csvFilePath);
        if (!file.exists()) {
            System.out.println("DEBUG: CSV file not found -> " + csvFilePath);
            return null;
        }

        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            boolean isFirstLine = true;

            while ((line = br.readLine()) != null) {
                if (isFirstLine) { // Skip header
                    isFirstLine = false;
                    continue;
                }

                String[] values = line.split(",");
                if (values.length < 6) continue; // Skip invalid rows

                String currentProdId = values[0].trim();
                if (currentProdId.equals(prodId.trim())) {
                    System.out.println("DEBUG: Found Product -> " + values[1]);

                    // Return found product
                    return new ProductBean(
                        values[0].trim(),  // prodId
                        values[1].trim(),  // prodName
                        values[2].trim(),  // prodType
                        Double.parseDouble(values[3].trim()),  // prodPrice
                        Integer.parseInt(values[4].trim()),  // prodQuantity
                        values[5].trim()   // prodImage (Path)
                    );
                }
            }
        } catch (IOException | NumberFormatException e) {
            e.printStackTrace();
        }
        return null; // If no product found
    }

}
