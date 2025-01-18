<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fresh2You</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
  <link rel="stylesheet" href="css/homepage.css">
</head>
<body>
<header class="header">
<a href="#" class="logo"><i class="fas fa-shopping-basket"></i>  Fresh2You</a>

<nav class="navbar">
	<a href="#home">home</a>
	<a href="#About us">About us</a>
	<a href="Top Picks!">Top Picks!</a>
	<a href="#Products">Products</a>
	<a href="#Promotion">Promotion</a>
</nav>

<div class="icons">
<div class="fa fa-bars" id="menu-btn"></div>
<div class="fas fa-search" id="search-btn"></div>
<div class="fas fa-shopping-cart" id="cart-btn"></div>
<div class="fas fa-user" id="login-btn"></div>
</div>

<form action="" class="search-form">
	<input type="search" id="search-box" placeholder="What are you looking for?">
	<label for="search-box" class="fas fa-search"></label>
</form>

<form action="" class="login-form">
<h3>Login now</h3>
<input type="email" placeholder="enter your email" class="box">
<input type="password" placeholder="your password" class="box">
<p>forget your password <a href="#">click here</a></p>
<p>don't have an account <a href="#">create now</a></p>
<input type="submit" value="login now" class="btn">

</form>

</header>

<section class="home" id="home">
<div class="content-container">
	<div class="content">
		<h3>Fresh and <span>Organic </span>Products To You </h3>
		<p>At Fresh2You, we believe in bringing nature’s best to your doorstep.Our fresh and organic produce is carefully grown and handpicked by local farmers, ensuring you enjoy the highest quality with every bite.</p>
		<a href="#" class="btn">Shop Now</a>
	</div>
	</div>
</section>

<section class="features" id="features">
<h1 class="heading"><span>How to Order</span></h1>
<div class="box-container">
	
	<div class="box">
		<h3>Step 1:</h3>
		<img src="images/step1.png" alt="step 1" style="width: 120px; height: 12opx;">
		<h3>Login or Sign Up for Fresh2You account</h3>
	</div>
	
	<div class="box">
		<h3>Step 2:</h3>
		<img src="images/458616488-step2.png" alt="step 2" style="width: 120px; height: 120px;">
		<h3>Input delivery address and select delivery date & time</h3>
	</div>
	
	<div class="box">
		<h3>Step 3:</h3>
		<img src="images/step3_new.png" alt="step 3" style="width: 120px; height: 120px;">
		<h3>Browse our products and add to cart</h3>
	</div>
	
	<div class="box">
		<h3>Step 4:</h3>
		<img src="images/step4.png" alt="step 4" style="width: 120px; height: 120px;">
		<h3>Make payment via cards, online banking or e-wallets</h3>
	</div>
	
	<div class="box">
		<h3>Step 5:</h3>
		<img src="images/step5.png" alt="step 5" style="width: 120px; height: 120px;">
		<h3>Order number will be provided as confirmation</h3>
	</div>
</div>
</section>

<script src="js/script.js"></script>
</body>
</html>