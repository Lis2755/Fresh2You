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
		
		<!-- Insert Header -->
	    <div class="row">
			<jsp:include page="Header.jsp" />
		</div>
		
		<div class="container d-flex justify-content-center align-items-center" style="min-height: 80vh; margin-top: 50px; margin-bottom: 50px;">
    <div class="row w-100">
        <form action="AddProductSrv" method="post" enctype="multipart/form-data"
            enctype="multipart/form-data" class="col-md-8 col-lg-7 col-xl-6 mx-auto"
            style="border: 2px solid black; border-radius: 10px; background-color: #ebebea; padding: 30px; 
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); margin-top:110px; margin-bottom: 15px;">
            
            <div class="text-center">
                <h2 style="color: #006400; font-weight: bold;">Admin | Add Product</h2>
            </div>

            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="last_name">PRODUCT NAME</label> 
                    <input type="text" placeholder="Enter Product Name" name="name" class="form-control" style="height: 45px;" required>
                </div>
                <div class="col-md-6 form-group">
                    <label for="producttype">PRODUCT TYPE</label> 
                    <select name="type" class="form-control" style="height: 45px;" required>
                        <option value="vegetables">Vegetables</option>
                        <option value="fruits">Fruits</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="price">UNIT PRICE (RM/gram)</label> 
                    <input type="number" placeholder="Enter Unit Price" name="price" class="form-control" style="height: 45px;" required>
                </div>
                <div class="col-md-6 form-group">
                    <label for="quantity">STOCK QUANTITY</label> 
                    <input type="number" placeholder="Enter Stock Quantity" name="quantity" class="form-control" style="height: 45px;" required>
                </div>
            </div>

            <div class="form-group">
                <label for="image">PRODUCT IMAGE</label> 
                <input type="file" name="image" class="form-control" style="height: 45px;" required>
            </div>

            <div class="row text-center" style="margin-top: 20px;">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-success"
                        style="width: 200px; height: 50px; font-size: 20px; border-radius: 50px; 
                        background-color: #006400; color: white; font-weight: bold; display: flex; 
                        align-items: center; justify-content: center;">
                        Add Product
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>


	
		<!-- Insert Footer -->
    	<jsp:include page="Footer.jsp" />
    	
	</body>
</html>
