<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page import="Java.dbImpl.*, Java.elements.*, java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
	<head>
	<title>Product Stocks</title>
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
	
	<body style="background-color: #ebebea;">
	
		<div class="row">
			<jsp:include page="Header.jsp" />
		</div>

		<div class="container" style="margin-top: 120px;">
			<h2 class="ms-5 text-start text-success fw-bold" 
    		style="color: #1e4f2b; font-size: 35px; font-weight: bold; margin-top: 20px; margin-bottom: 20px;">
        		Product Stock List
    		</h2>
		</div>
		
		<div class="container-fluid" style="display: flex; justify-content: center;">
			<div class="table-responsive" style="width: 90%;">
				<table class="table table-hover" style="width: 100%; border-collapse: collapse;">
					<thead style="background-color: #2c6c4b; color: white; font-size: 18px;">
						<tr>
							<th>Image</th>
							<th>Product ID</th>
							<th>Name</th>
							<th>Type</th>
							<th>Price</th>
							<th>Stock Quantity</th>
							<th colspan="2" style="text-align: center">Actions</th>
						</tr>
					</thead>
						
						<tbody style="background-color: white; font-size: 16px;">
	
							<%
							ProductServiceImpl productDao = new ProductServiceImpl();
							List<ProductBean> products = productDao.getAllProducts(application); // Pass ServletContext
	
							for (ProductBean product : products) {
							%>
	
							<tr>
								<td>
									<img src="<%= request.getContextPath() %>/<%= product.getProdImage() %>"
										style="width: 50px; height: 50px;">
								</td>
								<td><%=product.getProdId()%></td>
								<td><%=product.getProdName()%></td>
								<td><%=product.getProdType()%></td>
								<td>RM<%= String.format("%.2f", product.getProdPrice()) %></td>
								<td class= "text-center"><%=product.getProdQuantity()%></td>
								<td class="text-center">
			                        <form action="adminUpdateProd.jsp" method="get" style="display: inline-block; margin-right: 5px;">
									    <input type="hidden" name="prodid" value="<%= product.getProdId() %>">
									    <button type="submit" class="btn btn-primary">Update</button>
									</form>

			                        <form action="./RemoveProductSrv" method="post" style="display: inline-block;">
			                            <input type="hidden" name="prodid" value="<%= product.getProdId() %>">
			                            <button type="submit" class="btn btn-danger">Remove</button>
			                        </form>
			                    </td>
			                </tr>
			                <% } %>
	
			                <!-- Add New Product Button as the Last Row -->
			                <tr>
			                    <td colspan="7" class="text-center">
			                        <form action="adminAddProd.jsp" method="get">
			                            <button type="submit" class="btn btn-success" style="padding: 10px 20px; font-size: 16px;">
			                                + Add New Product
			                            </button>
			                        </form>
			                    </td>
			                </tr>

					</tbody>
				</table>
			</div>
		</div>

		<%@ include file="Footer.jsp"%>
	</body>
</html>
