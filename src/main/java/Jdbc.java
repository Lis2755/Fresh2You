import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Jdbc {
    public static void main(String[] args) {
        // Database credentials
        String url = "jdbc:mysql://localhost:3306/shopping-cart"; // Ensure the schema name is correct
        String user = "root"; // Replace with your MySQL username
        String password = "123456789"; // Replace with your MySQL password

        // Load MySQL JDBC Driver (Optional for newer versions)
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found!");
            e.printStackTrace();
            return;
        }

        // Try to establish a connection
        try (Connection con = DriverManager.getConnection(url, user, password)) {
            if (con != null) {
                System.out.println("Connected to the database successfully!");
            } else {
                System.out.println("Failed to connect to the database.");
            }
        } catch (SQLException e) {
            System.out.println("Connection failed! Check output console");
            e.printStackTrace();
        }
    }
}
