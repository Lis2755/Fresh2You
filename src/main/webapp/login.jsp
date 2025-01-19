<%@ page language="java" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Login Page</title>
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/changes.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	</head>
	
	<body style="background-color: #ffffff;">
	
		<!-- Include header (if needed) -->
	
		<%
		String message = request.getParameter("message");
		%>
		
		<div class="container">
			<div class="row" style="margin-top: 50px; margin-left: 2px; margin-right: 2px;">
				
				<form action="./LoginSrv" method="post"
					class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2"
					style="border: 2px solid black; background-color: #ebebea; padding: 10px;">
					
					<div style="font-weight: bold; margin-bottom: 20px;" class="text-center">
						<h2 style="color: #1e4f2b; font-weight: bold;">Please Login to Continue</h2>
						<%
							if (message != null) {
						%>
							<p style="color: red;">
								<%=message%>
							</p>
						<%
							}
						%>
					</div>

					<!-- DEBUG SECTION: Prints submitted values to check if they are being sent correctly -->
					<%
					    String debugUsername = request.getParameter("username");
					    String debugPassword = request.getParameter("password");
					    String debugUserType = request.getParameter("usertype");

					    if (debugUsername != null) {
					%>
					    <p style="color: red; font-weight: bold;">
					        DEBUG: Username = <%= debugUsername %>, Password = <%= debugPassword %>, UserType = <%= debugUserType %>
					    </p>
					<%
					    }
					%>

					<div class="row" style="margin-bottom: 10px;">
						<div class="col-md-12 form-group">
							<label for="email" style="font-size: 16px;">Email Address</label> 
							<input type="email" placeholder="Enter Your Email" name="username" class="form-control"
								id="email" required>
						</div>
					</div>
					
					<div class="row" style="margin-bottom: 10px;">
						<div class="col-md-12 form-group">
							<label for="password">Password</label> 
							<input type="password" placeholder="Enter Password" name="password" class="form-control"
								id="password" required>
						</div>
					</div>
					
					<div class="row" style="margin-bottom: 10px;">
						<div class="col-md-12 form-group">
							<label for="userrole">Login As</label> 
							<select name="usertype" id="userrole" class="form-control" required>
								<option value="customer" selected>Customer</option>
								<option value="admin">Admin</option>
							</select>
						</div>
					</div>
					
					<div class="row" style="margin-bottom: 10px;">
						<div class="col-md-12 text-center">
							<button type="submit" class="btn" style="background-color: #054d31; border-color: #054d31;
							 color: white; font-size: 16px; font-weight: bold; padding: 12px 40px; border-radius: 50px">
								Login
							</button>
						</div>
					</div>
					
				</form>
	
			</div>
		</div>
	
		<!-- Include footer (if needed) -->
	
	</body>
</html>
