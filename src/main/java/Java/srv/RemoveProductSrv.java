package Java.srv;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Java.dbImpl.ProductServiceImpl;
import jakarta.servlet.ServletContext;

@WebServlet("/RemoveProductSrv")
public class RemoveProductSrv extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RemoveProductSrv() {
        super();
    }

    // ✅ Handle both POST and GET requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    // ✅ Common method to process product removal
    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ✅ Get Product ID from request (Fixing "prodId cannot be resolved")
        String prodId = request.getParameter("prodid");

        if (prodId == null || prodId.isEmpty()) {
            response.sendRedirect("adminStock.jsp?message=Error: No Product ID Provided");
            return;
        }

        System.out.println("DEBUG: Removing product ID = " + prodId);

        // ✅ Remove product from CSV
        ServletContext context = getServletContext();
        ProductServiceImpl productService = new ProductServiceImpl();
        String status = productService.removeProduct(prodId, context);

        // ✅ Redirect back to adminStock.jsp with status message
        response.sendRedirect("adminStock.jsp?message=" + status);
    }
}
