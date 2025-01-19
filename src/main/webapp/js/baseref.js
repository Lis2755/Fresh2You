document.addEventListener("DOMContentLoaded", () => {
  const quantityButtons = document.querySelectorAll(".quantity-btn");
  const searchInput = document.getElementById("search-input");
  const searchButton = document.getElementById("search-button");
  const productCards = document.querySelectorAll(".product-card");

  // Quantity buttons functionality
  quantityButtons.forEach(button => {
    button.addEventListener("click", event => {
      const input = button.parentElement.querySelector(".quantity-input");
      let value = parseInt(input.value);
      
      if (button.classList.contains("plus")) {
        input.value = value + 1;
      } else if (button.classList.contains("minus") && value > 1) {
        input.value = value - 1;
      }
    });
  });

  // Search functionality
  searchButton.addEventListener("click", () => {
    const searchTerm = searchInput.value.toLowerCase();
    productCards.forEach(card => {
      const productName = card.querySelector("h3").innerText.toLowerCase();
      if (productName.includes(searchTerm)) {
        card.style.display = "block";
      } else {
        card.style.display = "none";
      }
    });
  });

  // Handle "Enter" key for search input
  searchInput.addEventListener("keydown", event => {
    if (event.key === "Enter") {
      searchButton.click();
    }
  });

  const buyNowButtons = document.querySelectorAll(".buy-now");
  const addToCartButtons = document.querySelectorAll(".add-to-cart");

  buyNowButtons.forEach(button => {
    button.addEventListener("click", () => {
      alert("Added to checkout");
    });
  });

  addToCartButtons.forEach(button => {
    button.addEventListener("click", () => {
      alert("Added to cart!");
    });
  });
});
