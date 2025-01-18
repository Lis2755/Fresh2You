<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
	<body style="background-color: #98b464;">
	
		<!-- Insert header -->
		<jsp:include page="header.jsp" />
	
		<div class="container">
			<div class="row"
				style="margin-top: 30px; margin-left: 2px; margin-right: 2px;">
				<form action="./UpdateProductSrv" method="post"
					class="col-md-6 col-md-offset-3"
					style="border: 2px solid black; border-radius: 10px; background-color: #eaf6cf; padding: 10px;">
					<div style="font-weight: bold; margin-bottom: 30px;" class="text-center">
						<div class="form-group">
							<h2 style="color: #006400; font-weight: bold">Admin | Update Product</h2>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-6 form-group">
							<label for="last_name">PRODUCT NAME</label> <input type="text"
								placeholder="Enter Product Name" name="name" class="form-control" id="last_name" required>
						</div>
						<div class="col-md-6 form-group">
							<label for="producttype">PRODUCT TYPE</label> <select name="type"
								id="producttype" class="form-control" required>
								<option value="vegetables">Vegetables</option>
								<option value="fruits">Fruits</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="last_name">PRODUCT DESCRIPTION</label>
						<textarea name="info" class="form-control text-align-left"
							id="last_name" required>
						</textarea>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<label for="last_name">UNIT PRICE (RM/gram)</label>
							<input type="number"
								placeholder="Enter Unit Price" name="price" class="form-control"
								id="last_name" required>
						</div>
						<div class="col-md-6 form-group">
							<label for="last_name">QUANTITY AVAILABLE</label> <input type="number"
								placeholder="Enter Stock Quantity" class="form-control"
								id="last_name" name="quantity" required>
						</div>
					</div>
					<div class="row text-center" style="margin-top: 10px;">
						<div class="col-md-6" style="margin-bottom: 2px;">
							<button formaction="adminViewProduct.jsp" class="btn btn-danger"
							style="width: 150px; height: 40px; font-size: 18px; border-radius: 50px; 
						    display: flex; align-items: center; justify-content: center;">
								Cancel
							</button>
						</div>
						<div class="col-md-6">
							<button type="submit" class="btn btn-success"
							style="width: 150px; height: 40px; font-size: 18px; border-radius: 50px; 
						    background-color: #006400; display: flex; align-items: center; justify-content: center;">
							Update Product</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		
		<!-- Insert Footer -->
		
	</body>
</html>
