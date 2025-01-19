package Java.srv;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Java.dbImpl.ProductServiceImpl;
import Java.elements.ProductBean;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.Part;

@WebServlet("/AddProductSrv")
@MultipartConfig(fileSizeThreshold = 1024 * 1024,  // 1MB threshold
                 maxFileSize = 1024 * 1024 * 5,    // 5MB max file size
                 maxRequestSize = 1024 * 1024 * 10) // 10MB max request size
public class AddProductSrv extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddProductSrv() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ServletContext context = getServletContext();
        ProductServiceImpl productService = new ProductServiceImpl();

        // ✅ Get Form Data
        String prodId = "P" + System.currentTimeMillis(); // Generate unique Product ID
        String prodName = request.getParameter("name");
        String prodType = request.getParameter("type");
        double prodPrice = Double.parseDouble(request.getParameter("price"));
        int prodQuantity = Integer.parseInt(request.getParameter("quantity"));

        // ✅ Handle Image Upload
        Part filePart = request.getPart("image");
        String prodImage = "images/default.png"; // Default image if upload fails
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = extractFileName(filePart);
            String uploadPath = context.getRealPath("/images/") + File.separator + fileName;

            File uploadDir = new File(context.getRealPath("/images/"));
            if (!uploadDir.exists()) uploadDir.mkdir(); // Create folder if not exists

            filePart.write(uploadPath);
            prodImage = "images/" + fileName; // Store image path
        }

        // ✅ Create Product and Save to CSV
        ProductBean product = new ProductBean(prodId, prodName, prodType, prodPrice, prodQuantity, prodImage);
        String status = productService.addProduct(product, context);

        // ✅ Redirect to Admin Stock Page
        response.sendRedirect("adminStock.jsp?message=" + status);
    }

    // Extracts file name from uploaded file
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String content : contentDisp.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return "default.png";
    }
}
