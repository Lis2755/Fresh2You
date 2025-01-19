package Java.srv;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Java.elements.*;
import Java.dbImpl.*;

/**
 * Servlet implementation class UpdateProductSrv
 */
@WebServlet("/UpdateProductSrv")
public class UpdateProductSrv extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateProductSrv() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String userType = (String) session.getAttribute("usertype");


        // ✅ Get product details from request
        String prodId = request.getParameter("pid");
        String prodName = request.getParameter("name");
        String prodType = request.getParameter("type");
        String prodPriceStr = request.getParameter("price");
        String prodQuantityStr = request.getParameter("quantity");

        // ✅ Check for null values
        if (prodId == null || prodId.isEmpty() || prodPriceStr == null || prodQuantityStr == null) {
            System.out.println("ERROR: Missing product ID or other fields.");
            response.sendRedirect("adminStock.jsp?message=Error: Missing product details.");
            return;
        }

        System.out.println("DEBUG: Received prodId = " + prodId);

        // ✅ Convert string values to numbers safely
        Double prodPrice = null;
        Integer prodQuantity = null;
        try {
            prodPrice = Double.parseDouble(prodPriceStr);
            prodQuantity = Integer.parseInt(prodQuantityStr);
        } catch (NumberFormatException e) {
            System.out.println("ERROR: Invalid number format for price or quantity.");
            response.sendRedirect("adminStock.jsp?message=Error: Invalid number format.");
            return;
        }

        // ✅ Create updated product object
        ProductBean product = new ProductBean();
        product.setProdId(prodId);
        product.setProdName(prodName);
        product.setProdType(prodType);
        product.setProdPrice(prodPrice);
        product.setProdQuantity(prodQuantity);

        // ✅ Update product in CSV
        ProductServiceImpl dao = new ProductServiceImpl();
        String status = dao.updateProductWithoutImage(prodId, product, getServletContext());

        // ✅ Redirect back to update page with success/failure message
        response.sendRedirect("adminUpdateProd.jsp?prodid=" + prodId + "&message=" + status);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
