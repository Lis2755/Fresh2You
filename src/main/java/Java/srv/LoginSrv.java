package Java.srv;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginSrv (Using CSV instead of Database)
 */
@WebServlet("/LoginSrv")
public class LoginSrv extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String userType = request.getParameter("usertype");
        response.setContentType("text/html");

        System.out.println("Received Login Request: Username=" + userName + ", Password=" + password + ", UserType=" + userType);

        // Get the CSV file path from WEB-INF
        ServletContext context = getServletContext();
        String csvFilePath = context.getRealPath("/WEB-INF/users.csv");

        // Load users from CSV
        Map<String, String[]> users = loadUsersFromCSV(csvFilePath);

        // Debug: Print loaded users
        System.out.println("Loaded Users from CSV: " + users);

        String status = "Login Denied! Invalid Username or Password.";

        if (users.containsKey(userName)) {
            String[] credentials = users.get(userName);
            String storedPassword = credentials[0];
            String storedUserType = credentials[1];

            System.out.println("Found User: " + userName + " | Expected Password=" + storedPassword + ", Expected UserType=" + storedUserType);

            if (password.equals(storedPassword) && userType.equalsIgnoreCase(storedUserType)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", userName);
                session.setAttribute("usertype", userType);

                System.out.println("Login Successful!");

                if (userType.equalsIgnoreCase("admin")) {
                    response.sendRedirect("adminStock.jsp");
                } else {
                    response.sendRedirect("userHome.jsp");
                }
                return;
            } else {
                System.out.println("Password/UserType Mismatch!");
            }
        } else {
            System.out.println("User Not Found in CSV!");
        }

        response.sendRedirect("login.jsp?message=" + URLEncoder.encode(status, "UTF-8"));
    }


    // Load users from CSV file into a HashMap
    private Map<String, String[]> loadUsersFromCSV(String csvFilePath) {
        Map<String, String[]> users = new HashMap<>();

        try (BufferedReader br = new BufferedReader(new FileReader(new File(csvFilePath)))) {
            String line;
            boolean isFirstLine = true;

            while ((line = br.readLine()) != null) {
                if (isFirstLine) { // Skip CSV header
                    isFirstLine = false;
                    continue;
                }
                String[] values = line.split(",");

                if (values.length == 3) {
                    users.put(values[0], new String[]{values[1], values[2]});
                    System.out.println("Loaded User: " + values[0] + " | Password=" + values[1] + ", UserType=" + values[2]);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return users;
    }
}
