<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/basestyle.css">
  <title>Fruit Store</title>
  <jsp:include page="Header.jsp" />
</head>
<body>

    <header>
        <div class="header-image">
            <img src="images/FruitFarm.jpg" alt="Fresh Vegetables"> 
        </div>
        <div class="header-text">
            <h1>Fresh Fruits</h1>
        </div>

  <nav>
      <div class="search-bar">
        <input type="text" id="search-input" placeholder="Search for vegetables...">
        <button id="search-button">Search</button>
      </div>
  </nav>
</header>
  <div class="product-grid">
    <!-- Product Card -->
    <div class="product-card" >
      <img src="images/Apple.jpg" alt="Apple">
      <h3>Apple (500g)</h3>
      <p>RM 5.90</p>
      <div class="quantity">
        <button class="quantity-btn minus">-</button>
        <input type="number" value="1" class="quantity-input" min="1">
        <button class="quantity-btn plus">+</button>
      </div>
      <br>
      <button class="buy-now">Buy Now</button>
      <br><br>
      <button class="add-to-cart">Add to Cart</button>
    </div>
    
    <div class="product-card">
      <img src="images/Avocado.jpg" alt="Avocado">
      <h3>Avocado (500g)</h3>
      <p>RM 8.90</p>
      <div class="quantity">
        <button class="quantity-btn minus">-</button>
        <input type="number" value="1" class="quantity-input" min="1">
        <button class="quantity-btn plus">+</button>
      </div>
      <br>
      <button class="buy-now">Buy Now</button>
      <br><br>
      <button class="add-to-cart">Add to Cart</button>
    </div>
    
    <div class="product-card">
        <img src="images/Banana.jpg" alt="Banana">
        <h3>Banana (500g)</h3>
        <p>RM 4.90</p>
        <div class="quantity">
          <button class="quantity-btn minus">-</button>
          <input type="number" value="1" class="quantity-input" min="1">
          <button class="quantity-btn plus">+</button>
        </div>
        <br>
        <button class="buy-now">Buy Now</button>
        <br><br>
        <button class="add-to-cart">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="images/Blueberry.jpg" alt="Blueberry">
        <h3>Blueberry (500g)</h3>
        <p>RM 7.90</p>
        <div class="quantity">
          <button class="quantity-btn minus">-</button>
          <input type="number" value="1" class="quantity-input" min="1">
          <button class="quantity-btn plus">+</button>
        </div>
        <br>
        <button class="buy-now">Buy Now</button>
        <br><br>
        <button class="add-to-cart">Add to Cart</button>
      </div>
      <br>
      <br>

      <div class="product-card">
        <img src="images/Lychee.jpg" alt="Lychee">
        <h3>Lychee (500g)</h3>
        <p>RM 5.90</p>
        <div class="quantity">
          <button class="quantity-btn minus">-</button>
          <input type="number" value="1" class="quantity-input" min="1">
          <button class="quantity-btn plus">+</button>
        </div>
        <br>
        <button class="buy-now">Buy Now</button>
        <br><br>
        <button class="add-to-cart">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="images/Mango.jpg" alt="Mango">
        <h3>Mango (500g)</h3>
        <p>RM 6.90</p>
        <div class="quantity">
          <button class="quantity-btn minus">-</button>
          <input type="number" value="1" class="quantity-input" min="1">
          <button class="quantity-btn plus">+</button>
        </div>
        <br>
        <button class="buy-now">Buy Now</button>
        <br><br>
        <button class="add-to-cart">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="images/Oranges.jpg" alt="Oranges">
        <h3>Oranges (500g)</h3>
        <p>RM 5.90</p>
        <div class="quantity">
          <button class="quantity-btn minus">-</button>
          <input type="number" value="1" class="quantity-input" min="1">
          <button class="quantity-btn plus">+</button>
        </div>
        <br>
        <button class="buy-now">Buy Now</button>
        <br><br>
        <button class="add-to-cart">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="images/Pair.jpg" alt="Pair">
        <h3>Pair (500g)</h3>
        <p>RM 5.90</p>
        <div class="quantity">
          <button class="quantity-btn minus">-</button>
          <input type="number" value="1" class="quantity-input" min="1">
          <button class="quantity-btn plus">+</button>
        </div>
        <br>
        <button class="buy-now">Buy Now</button>
        <br><br>
        <button class="add-to-cart">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="images/Pineapple.jpg" alt="Pineapple">
        <h3>Pineapple (500g)</h3>
        <p>RM 7.90</p>
        <div class="quantity">
          <button class="quantity-btn minus">-</button>
          <input type="number" value="1" class="quantity-input" min="1">
          <button class="quantity-btn plus">+</button>
        </div>
        <br>
        <button class="buy-now">Buy Now</button>
        <br><br>
        <button class="add-to-cart">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="images/Strawberry.jpeg" alt="Strawberry">
        <h3>Strawberry (500g)</h3>
        <p>RM 9.90</p>
        <div class="quantity">
          <button class="quantity-btn minus">-</button>
          <input type="number" value="1" class="quantity-input" min="1">
          <button class="quantity-btn plus">+</button>
        </div>
        <br>
        <button class="buy-now">Buy Now</button>
        <br><br>
        <button class="add-to-cart">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="images/Watermelon.jpeg" alt="Watermelon">
        <h3>Watermelon (500g)</h3>
        <p>RM 7.90</p>
        <div class="quantity">
          <button class="quantity-btn minus">-</button>
          <input type="number" value="1" class="quantity-input" min="1">
          <button class="quantity-btn plus">+</button>
        </div>
        <br>
        <button class="buy-now">Buy Now</button>
        <br><br>
        <button class="add-to-cart">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="images/Mangosteen.JPG" alt="Mangosteen">
        <h3>Mangosteen (500g)</h3>
        <p>RM 6.90</p>
        <div class="quantity">
          <button class="quantity-btn minus">-</button>
          <input type="number" value="1" class="quantity-input" min="1">
          <button class="quantity-btn plus">+</button>
        </div>
        <br>
        <button class="buy-now">Buy Now</button>
        <br><br>
        <button class="add-to-cart">Add to Cart</button>
      </div>
  </div>
  
    <jsp:include page="Footer.jsp" />

  <script src="js/baseref.js"></script>
</body>
</html>
