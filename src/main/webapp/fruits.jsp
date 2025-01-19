<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page import="Java.dbImpl.ProductServiceImpl, Java.elements.ProductBean, java.util.*, jakarta.servlet.ServletContext" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/basestyle.css">
    <title>Fruit Store</title>
    <jsp:include page="Header.jsp" />
</head>
<body>

<header>
    <div class="header-image">
        <img src="images/FruitFarm.jpg" alt="Fresh Fruits">
    </div>
    <div class="header-text">
        <h1>Fresh Fruits</h1>
    </div>

    <nav>
        <div class="search-bar">
            <input type="text" id="search-input" placeholder="Search for fruits...">
            <button id="search-button">Search</button>
        </div>
    </nav>
</header>

<div class="product-grid">
    <%
        ProductServiceImpl productService = new ProductServiceImpl();
        List<ProductBean> products = productService.getAllProducts(application); // Load from CSV

        for (ProductBean product : products) {
            if (product.getProdType().equalsIgnoreCase("fruits")) { 
    %>
        <!-- Product Card -->
        <div class="product-card">
            <img src="<%= request.getContextPath() %>/<%= product.getProdImage() %>" alt="<%= product.getProdName() %>">
            <h3><%= product.getProdName() %> (500g)</h3>
            <p>RM <%= String.format("%.2f", product.getProdPrice()) %></p>

            <!-- Removed Quantity Input Fields -->

            <form action="AddtoCart" method="post">
                <input type="hidden" name="pid" value="<%= product.getProdId() %>">
                <input type="hidden" name="pqty" value="1"> <!-- Default to 1 for direct purchase -->
                <button type="submit" class="buy-now">Buy Now</button>
            </form>

            <br>

            <form action="AddtoCart" method="post">
                <input type="hidden" name="pid" value="<%= product.getProdId() %>">
                <input type="hidden" name="pqty" value="1"> <!-- Default to 1 when adding to cart -->
                <button type="submit" class="add-to-cart">Add to Cart</button>
            </form>
        </div>
    <%
            }
        }
    %>
</div>

<jsp:include page="Footer.jsp" />
<script src="js/baseref.js"></script>
</body>
</html>
