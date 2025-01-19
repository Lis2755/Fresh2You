<%@ page language="java" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Remove Product</title>
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
	

	<!-- Insert header -->

	<div class="container">
		<div class="row"
			style="margin-top: 30px; margin-left: 2px; margin-right: 2px;">
			<form action="./RemoveProductSrv" method="post"
				class="col-md-6 col-md-offset-3"
				style="border: 2px solid black; border-radius: 10px; background-color: #ebebea; padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h2 style="color: #006400; font-weight: bold;">Admin | Remove Product</h2>
				</div>
				
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">PRODUCT ID</label>
						<input type="text"
							placeholder="Enter Product ID" name="prodid" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row d-flex justify-content-center mt-3">
    <div class="col-md-6">
        <a href="adminViewProduct.jsp" class="btn btn-info"
           style="width: 150px; height: 40px; font-size: 16px; font-weight: 500; 
                  border-radius: 50px; display: flex; align-items: center; justify-content: center; 
                  background-color: #006400; padding: 5px 10px;">
            Cancel
        </a>
    </div>
    <div class="col-md-6">
        <button type="submit" class="btn btn-danger"
                style="width: 150px; height: 40px; font-size: 16px; font-weight: 500; 
                       border-radius: 50px; display: flex; align-items: center; justify-content: center; 
                       padding: 5px 10px;">
            Remove Product
        </button>
    </div>
</div>


			</form>
		</div>
	</div>

	<!-- Insert footer -->
	
</body>
</html>
