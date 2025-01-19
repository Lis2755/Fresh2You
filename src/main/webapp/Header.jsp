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
    <a href="#" class="logo"><i class="fas fa-shopping-basket"></i> Fresh2You</a>
    <nav class="navbar">
        <a href="#home">home</a>
        <a href="AboutUs.jsp">Recipe</a>
        <a href="#Products">Products</a>
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
        <button class="btn">Login now</button>
    </form>
</header>

</body>
</html>