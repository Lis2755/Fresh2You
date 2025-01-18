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

<script src="js/script.js"></script>
</body>
</html>