<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fresh2You</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
  <link rel="stylesheet" href="css/homepage.css">
  <jsp:include page="Header.jsp" />
</head>
<body>

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

<section class="recipes" id="recipes">
    <h1 class="heading"><span>Discover Our Recipes</span></h1>
    <div class="content-container">
    	<img src="images/recipe.jpeg" alt="recipe">
        <p>Get inspired with delicious recipes using our fresh and organic produce. From quick meals to gourmet dishes, we have something for everyone!</p>
        <a href="index.html" class="btn">Discover Recipes</a>
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


  <jsp:include page="Footer.jsp" />



<script src="js/script.js"></script>
</body>
</html>