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

<section class="categories" id="categories">
    <h1 class="heading"><span>Product Categories</span></h1>
    <div class="box-container">
        <!-- Category 1 -->
        <div class="box">
            <img src="images/framerpick.png" alt="Framer's pick" style="width: 200px; height: 200px;">
            <h3>Framer's pick</h3>
            <a href="" class="btn">Shop Now</a>
        </div>
        <!-- Category 2 -->
        <div class="box">
            <img src="images/ReadyToEat.jpg" alt="Ready to eat" style="width: 200px; height: 200px;">
            <h3>Ready to eat</h3>
            <a href="" class="btn">Shop Now</a>
        </div>
        <!-- Category 3 -->
        <div class="box">
            <img src="images/fruit.jpg" alt="Fruits" style="width: 200px; height: 200px;">
            <h3>Fruits</h3>
            <a href="" class="btn">Shop Now</a>
        </div>
        
        <div class="box">
            <img src="images/vegetables.jpg" alt="Vegetables" style="width: 200px; height: 200px;">
            <h3>Vegetables</h3>
            <a href="" class="btn">Shop Now</a>
        </div>
    </div>
</section>

<section class="review" id="review">
	<h1 class="heading"><span>customer's review</span></h1>
	<div class="review-slider">
		<div class="wrapper">
			<div class="box">
				<img src="images/review1.png" alt="">
				<p>“ Very good quality vegetables and well packed to retain freshness! Well done! ”</p>
				<h3>John Doe</h3>
				<div class="stars">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
				</div>
			</div>
			
			<div class="box">
				<img src="images/review2.png" alt="">
				<p>“ Thank you for delivering all the vegetables on time, all are so fresh, like just harvested from farm which you can't get from market. Worth the purchase. Thank you! ”</p>
				<h3>Oliver Bennett</h3>
				<div class="stars">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
				</div>
			</div>
			
			<div class="box">
				<img src="images/review3.png" alt="">
				<p>“ My Tom Yam soup is made so easy with your precut Meal Kit set! ”</p>
				<h3>Sophia Carter</h3>
				<div class="stars">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
				</div>
			</div>
			
			<div class="box">
				<img src="images/review4.png" alt="">
				<p>“ Received my vegetables on time just now. All are in super fresh condition. Your service never let me down, thank you so much! ”</p>
				<h3>Ava Williams</h3>
				<div class="stars">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
				</div>
			</div>
			
			
		</div>
	</div>

</section>

<section class="footer">
    <div class="box-container">
        <!-- Logo and Company Name -->
        <div class="box">
            <h3>Fresh2You <i class="fas fa-shopping-basket"></i></h3>
            <p>Delivering fresh and organic produce straight to your doorstep.</p>
        </div>

        <!-- Contact Information -->
        <div class="box">
            <h3>Contact Us</h3>
            <p>Email: support@fresh2you.com</p>
            <p>Phone: +1 234 567 890</p>
            <p>Address: 123 Green Lane, Cityville</p>
        </div>

        <!-- Useful Links -->
        <div class="box">
            <h3>Useful Links</h3>
            <a href="#home">Home</a>
            <a href="#About us">About Us</a>
            <a href="#Products">Products</a>
            <a href="#Promotion">Promotion</a>
            <a href="#">Privacy Policy</a>
        </div>

        <!-- Social Media Links -->
        <div class="box">
            <h3>Follow Us</h3>
            <div class="social-links">
                <a href="#"><i class="fab fa-facebook"></i> Facebook</a>
                <a href="#"><i class="fab fa-twitter"></i> Twitter</a>
                <a href="#"><i class="fab fa-instagram"></i> Instagram</a>
                <a href="#"><i class="fab fa-youtube"></i> YouTube</a>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2025 Fresh2You. All Rights Reserved.</p>
    </div>
</section>





<script src="js/script.js"></script>
</body>
</html>