<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="Java.dbImpl.*, Java.elements.*, java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/changes.css">
    <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ffffff;">

    <!-- Insert Header -->
    <div class="row">
		<jsp:include page="Header.jsp" />
	</div>


    <div class="container d-flex justify-content-center align-items-center" style="">
    <div class="row w-100">
        <%
            String prodId = request.getParameter("prodid");
            if (prodId == null || prodId.isEmpty()) {
        %>
            <h3 class="text-center text-danger">Error: Product ID is missing!</h3>
        <%
            } else {
                ProductServiceImpl productDao = new ProductServiceImpl();
                ProductBean product = productDao.getProductDetails(prodId, getServletContext()); // Fetch product details

                if (product == null) {
        %>
            <h3 class="text-center text-danger">Error: Product Not Found!</h3>
        <%
                } else {
        %>

        <form action="./UpdateProductSrv" method="post"
            class="col-md-6 col-lg-5 col-xl-4 mx-auto"
            style="border: 2px solid black; border-radius: 10px; background-color: #ebebea; padding: 20px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top:180px; margin-bottom:50px;">
            
            <div class="text-center">
                <h2 style="color: #006400; font-weight: bold;">Admin | Update Product</h2>
            </div>

            <!--Hidden Input to Pass Product ID -->
            <input type="hidden" name="pid" value="<%= product.getProdId() %>">

            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="last_name">PRODUCT NAME</label> 
                    <input type="text" name="name" class="form-control" id="last_name" 
                        value="<%= product.getProdName() %>" required>
                </div>
                <div class="col-md-6 form-group">
                    <label for="producttype">PRODUCT TYPE</label> 
                    <select name="type" id="producttype" class="form-control" required>
                        <option value="vegetables" <%= product.getProdType().equals("vegetables") ? "selected" : "" %>>Vegetables</option>
                        <option value="fruits" <%= product.getProdType().equals("fruits") ? "selected" : "" %>>Fruits</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="price">UNIT PRICE (RM/gram)</label>
                    <input type="number" name="price" class="form-control" id="price"
                        value="<%= product.getProdPrice() %>" step="0.01" required>
                </div>
                <div class="col-md-6 form-group">
                    <label for="quantity">QUANTITY AVAILABLE</label> 
                    <input type="number" name="quantity" class="form-control" id="quantity"
                        value="<%= product.getProdQuantity() %>" required>
                </div>
            </div>

            <div class="row text-center" style="margin-top: 10px;">
			    <div class="col-md-6" style="margin-bottom: 2px;">
			        <button formaction="adminStock.jsp" class="btn btn-danger"
			            style="width: 150px; height: 40px; font-size: 18px; border-radius: 50px; 
			            display: flex; align-items: center; justify-content: center;">
			            Cancel
			        </button>
			    </div>
			    <form action="/UpdateProductSrv" method="post">
				    <input type="hidden" name="pid" value="<%= request.getParameter("prodid") %>">
				    <div class="col-md-6">
				        <button type="submit" class="btn"
				            style="width: 150px; height: 40px; font-size: 18px; border-radius: 50px; 
				            color: white; background-color: #006400; display: flex; align-items: center; justify-content: center;">
				            Update Product
				        </button>
    				</div>
				</form>

			</div>

        </form>
        <% } } %>
    </div>
</div>


    <!-- Insert Footer -->
    <jsp:include page="Footer.jsp" />

</body>
</html>
