package Java.srv;

import java.io.*;
import java.util.*;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Java.dbImpl.ProductServiceImpl;
import Java.elements.ProductBean;

/**
 * Servlet implementation class AddtoCart (Using CSV Instead of Database)
 */
@WebServlet("/AddtoCart")
public class AddtoCart extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String CART_CSV_FILE = "/WEB-INF/cart.csv"; // Cart storage path

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String userName = (String) session.getAttribute("username");
        String userType = (String) session.getAttribute("usertype");

        if (userName == null || userType == null || !userType.equalsIgnoreCase("customer")) {
            response.sendRedirect("login.jsp?message=Session Expired, Login Again to Continue!");
            return;
        }

        String userId = userName;
        String prodId = request.getParameter("pid");
        int pQty = Integer.parseInt(request.getParameter("pqty")); // Always 1 since no quantity input

        ServletContext context = getServletContext();
        String cartCsvPath = context.getRealPath(CART_CSV_FILE);

        // Load all cart items
        List<String[]> cartItems = loadCartItems(cartCsvPath);

        // Check if the product already exists in the cart
        boolean updated = false;
        for (String[] item : cartItems) {
            if (item[0].equals(userId) && item[1].equals(prodId)) { // User already has this item
                int currentQty = Integer.parseInt(item[2]);
                item[2] = String.valueOf(currentQty + pQty); // Update quantity
                updated = true;
                break;
            }
        }

        // If the product was not in the cart, add a new entry
        if (!updated) {
            cartItems.add(new String[]{userId, prodId, String.valueOf(pQty)});
        }

        // Save updated cart data
        saveCartItems(cartCsvPath, cartItems);

        response.sendRedirect("fruits.jsp?message=Product added to cart successfully!");
    }

    // Load cart data from CSV file
    private List<String[]> loadCartItems(String filePath) {
        List<String[]> cartItems = new ArrayList<>();
        File file = new File(filePath);

        if (!file.exists()) return cartItems;

        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            boolean isFirstLine = true;
            while ((line = br.readLine()) != null) {
                if (isFirstLine) { // Skip header
                    isFirstLine = false;
                    continue;
                }
                String[] values = line.split(",");
                if (values.length == 3) cartItems.add(values);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return cartItems;
    }

    // Save cart data to CSV file
    private void saveCartItems(String filePath, List<String[]> cartItems) {
        try (PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter(filePath)))) {
            pw.println("userId,prodId,quantity"); // Header
            for (String[] item : cartItems) {
                pw.println(String.join(",", item));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
