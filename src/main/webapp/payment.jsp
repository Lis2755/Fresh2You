<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
	<title>Payments</title>
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
	
		<!-- Start of payment box -->
		
		<div class="container">
			<div class="row"
				style="margin-top: 5px; margin-left: 2px; margin-right: 2px;">
				<form method="post"
					class="col-md-6 col-md-offset-3"
					style="border: 2px solid black; border-radius: 10px; background-color: #FFE5CC; padding: 10px;">
					
					<div style="font-weight: bold;" class="text-center">
						<div class="form-group">
							<h2 style="color: #0d570e; font-weight: bold">Credit Card Payment</h2>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-12 form-group">
							<label>CARD HOLDER NAME</label> 
							<input
								type="text" placeholder="Enter Card Holder Name" class="form-control" required>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-12 form-group">
							<label>CREDIT CARD NUMBER</label> 
							<input type="number" placeholder="xxxx-xxxx-xxxx-xxxx" class="form-control" required>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-6 form-group">
							<label>EXPIRY</label> 
							<input type="text" placeholder="MM/YY" class="form-control" required>
						</div>
						
						<div class="col-md-6 form-group">
							<label for="last_name">Enter CVV</label> 
							<input type="number" placeholder="xxx" class="form-control" required>
						</div>
					</div>
					
					<div class="row text-center" style="margin-top: 18px;">
    <div class="col-md-12 form-group">
        <button type="submit" class="btn btn-success" 
            style="background: #006400; color: white; 
                   border-radius: 50px; font-size: 18px; 
                   font-weight: bold; padding: 10px;">
            Pay Total Amount: RMxxxx
        </button>
    </div>
</div>

				</form>
			</div>
		</div>
	
		<!-- End of payment box -->
	
		<!-- Include Footer -->
	
	</body>
</html>
