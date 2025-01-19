<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fresh2You</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    <link rel="stylesheet" href="css/homepage.css">
    <style>
        /* Dropdown styles */
        .navbar {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .navbar a {
            text-decoration: none;
            color: black;
            padding: 10px 15px;
        }

        .navbar .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: white;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 5px;
        }

        .dropdown-content a {
            color: black;
            padding: 10px 15px;
            text-decoration: none;
            display: block;
            border-bottom: 1px solid #ddd;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover > a {
            color: #007BFF; /* Highlight "Products" when hovered */
        }
    </style>
</head>
<body>
<header class="header">
    <a href="#" class="logo"><i class="fas fa-shopping-basket"></i> Fresh2You</a>
    <nav class="navbar">
        <a href="index.jsp">home</a>
        <a href="connect.jsp">Recipe</a>
        <div class="dropdown">
            <a href="#Products">Products</a>
            <div class="dropdown-content">
                <a href="BaseFruits.jsp">Fruits</a>
                <a href="BaseVegetables.jsp">Vegetables</a>
            </div>
        </div>
    </nav>
    <div class="icons">
        <div class="fa fa-bars" id="menu-btn"></div>
        <div class="fas fa-shopping-cart" id="cart-btn"></div>
        <div class="fas fa-user" id="login-btn"></div>
    </div>
    <form action="" class="login-form">
        <button class="btn">Login now</button>
    </form>
</header>
</body>
</html>
