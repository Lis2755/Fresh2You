<%@ page language="java" 
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Fresh2You | Cart</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/changes.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	
	<body style="background-color: #ebebea;">
	
		<!-- Page View -->
		<!-- Header -->
		
	
		<!-- Middle (Contents) -->
		<!-- Title -->
		<div class="container">
    		<h2 class="ms-5 text-start text-success fw-bold" style="color: #1e4f2b; font-size: 35px; font-weight: bold; margin-top: 20px; margin-bottom: 20px;">
        		Shopping Cart
    		</h2>
		</div>

		
		<!-- My Cart -->
		<div class="container">
	
			<table class="table table-hover">
				<thead
					style="background-color: #1e4f2b; color: white; font-size: 18px; font-weight: bold;">
					<tr>
						<th>Products</th>
						<th>Name</th>
						<th>Price</th>
						<th>Remove</th>
						<th>Quantity</th>
						<th>Add</th>
						<th>Amount</th>
					</tr>
				</thead>
				<tbody
					style="background-color: white; font-size: 16px;">
	
							<tr>
								<td>
									<img src="./Image.png" style="width: 50px; height: 50px;">
								</td>
								<td>Name</td>
								<td>Price</td>
								<td>
								    <a
									style="background-color: #c7c3c3; color: #1e4f2b; padding: 8px 12px; border-radius: 5px; display: inline-block;">
									<i
										class="fa fa-minus">
									</i>
									</a>
								</td>
								
								<td>
								    <form method="post" action="./UpdateToCart" style="display: flex; align-items: center; gap: 5px;">
								        <input type="number" name="pqty"
								            style="width: 60px; text-align: center; border: 1px solid #ccc; padding: 5px; border-radius: 5px;" min="0">
								        <input type="submit" name="Update" value="Update"
								            style="background-color: #1e4f2b; color: white; border: none; padding: 8px 12px; border-radius: 5px; cursor: pointer;">
								    </form>
								</td>
								
								<td>
								    <a
									style="background-color: #c7c3c3; color: #1e4f2b; padding: 8px 12px; border-radius: 5px; display: inline-block;">
									<i 
										class="fa fa-plus">
									</i>
									</a>
								</td>

								<td>AmountSumPerProduct</td>
							</tr>
	
					<!-- Sum -->
					<tr style="background-color: grey; color: white; font-weight: bold">
						<td colspan="6" style="text-align: right; font-size: 18px; ">
							Total (RM)
						</td>
						<td style="text-align: right; font-size: 18px; ">
							TotalLastAmount
						</td>
					</tr>

					<tr style="background-color: grey; color: white;">
						<td colspan="5" style="text-align: center;">
						<td colspan="2" align="center">
							<form method="post">
								<button style="background-color: #054d31; color: white; font-size: 20px; 
                   				border: none; border-radius: 8px; cursor: pointer; 
                   				font-weight: bold; width: 250px; height: 50px;">
									Proceed to Checkout
								</button>
							</form>
						</td>
	
					</tr>

				</tbody>
			</table>
		</div>
		<!-- End of Product Items List -->
	
		<!-- Insert Footer Here -->
	</body>
</html>