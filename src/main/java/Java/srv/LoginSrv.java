package Java.srv;

import java.io.*;
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

@WebServlet("/LoginSrv")
public class LoginSrv extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String userType = request.getParameter("usertype");
        response.setContentType("text/html");

        // Debugging logs
        System.out.println("DEBUG: Login Attempt -> Username: " + userName + ", UserType: " + userType);

        // Ensure no null or empty values are passed
        if (userName == null || password == null || userType == null ||
            userName.isEmpty() || password.isEmpty() || userType.isEmpty()) {
            response.sendRedirect("login.jsp?message=" + URLEncoder.encode("Invalid Input! Please fill all fields.", "UTF-8"));
            return;
        }

        // Get the CSV file path from WEB-INF
        ServletContext context = getServletContext();
        String csvFilePath = context.getRealPath("/WEB-INF/users.csv");

        // Load users from CSV
        Map<String, String[]> users = loadUsersFromCSV(csvFilePath);

        // Debugging
        System.out.println("DEBUG: Loaded Users from CSV: " + users);

        // Default error message
        String status = "Login Denied! Invalid Username or Password.";

        if (users.containsKey(userName)) {
            String[] credentials = users.get(userName);
            String storedPassword = credentials[0];
            String storedUserType = credentials[1];

            System.out.println("DEBUG: Found User -> " + userName + " | Expected UserType: " + storedUserType);

            // Case-insensitive role matching
            if (password.equals(storedPassword) && userType.equalsIgnoreCase(storedUserType)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", userName);
                session.setAttribute("usertype", userType);

                System.out.println("DEBUG: Login Success! Redirecting user...");

                // Redirect based on user role
                if (userType.equalsIgnoreCase("admin")) {
                    response.sendRedirect("adminStock.jsp");
                } else {
                    response.sendRedirect("fruits.jsp"); // Redirect customers to BaseFruits.jsp
                }
                return;
            } else {
                System.out.println("DEBUG: Password/UserType Mismatch!");
            }
        } else {
            System.out.println("DEBUG: User Not Found in CSV!");
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

                if (values.length == 3) { // Ensure valid CSV format
                    users.put(values[0].trim(), new String[]{values[1].trim(), values[2].trim()});
                    System.out.println("DEBUG: Loaded User -> " + values[0]);
                }
            }
        } catch (IOException e) {
            System.out.println("ERROR: Unable to read CSV file!");
            e.printStackTrace();
        }
        return users;
    }
}
