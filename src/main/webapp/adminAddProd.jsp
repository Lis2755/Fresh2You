<%@ page language="java" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<title>Add Product</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/changes.css">
	</head>
	<body style="background-color: #ffffff;">
		
		<!-- Insert header -->
	

		<div class="container">
			<div class="row"
				style="margin-top: 30px; margin-left: 2px; margin-right: 2px;">
				<form action="./AddProductSrv" method="post"
					enctype="multipart/form-data" class="col-md-6 col-md-offset-3"
					style="border: 2px solid black; border-radius: 10px; background-color: #ebebea; padding: 10px;">
					<div style="font-weight: bold;" class="text-center">
						<h2 style="color: #006400; font-weight: bold;">Admin | Add Product</h2>
					</div>

					<div class="row">
						<div class="col-md-6 form-group">
							<label for="last_name">PRODUCT NAME</label> <input type="text"
								placeholder="Enter Product Name" name="name" class="form-control"
								id="last_name" required>
						</div>
						<div class="col-md-6 form-group">
							<label for="producttype">PRODUCT TYPE</label> 
							<select name="type"
								id="producttype" class="form-control" required>
								<option value="mobile">Vegetables</option>
								<option value="tv">Fruits</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="last_name">PRODUCT DESCRIPTION</label>
						<textarea placeholder="Enter Product Description" name="info" class="form-control" id="last_name" required></textarea>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<label for="last_name">UNIT PRICE (RM/gram)</label> <input type="number"
								placeholder="Enter Unit Price" name="price" class="form-control"
								id="last_name" required>
						</div>
						<div class="col-md-6 form-group">
							<label for="last_name">STOCK QUANTITY</label> <input type="number"
								placeholder="Enter Stock Quantity" name="quantity"
								class="form-control" id="last_name" required>
						</div>
					</div>
					<div>
						<div class="col-md-12 form-group">
							<label for="last_name">PRODUCT IMAGE</label> <input type="file"
								placeholder="Select Image" name="image" class="form-control"
								id="last_name" required>
						</div>
					</div>
					<div class="row" style="margin-bottom: 10px;">
						<div class="col-md-12 text-center">
					        <button type="submit" class="btn btn-success" 
					            style="width: 150px; height: 40px; font-size: 18px; border-radius: 50px; 
					                   background-color: #006400; font-weight: bold;">
					            Add Product
					        </button>
					    </div>
					</div>


				</form>
			</div>
		</div>
	
		<!-- Insert footer -->
	</body>
</html>
