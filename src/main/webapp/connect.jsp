<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu's Recipes</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha384-vpD4BUpCQkLSka6X4emY+gfLk5ezedL9alvGVaDGLUpuAI5JSTBrBzRMj0Ghknj9" crossorigin="anonymous" />
</head>
<body>
	<jsp:include page="Header.jsp" />
    <h1>
        <nav>
            <h1>Menu's Recipes</h1>
            <form>
                <input type="text" placeholder="Search for recipes..." class="searchBox">
                <button type="submit" class="searchBtn">Search</button>
            </form>
        </nav>
    </h1>
    <main>
        <section>
            <div class="recipe-container">
                <h2>Search your favourite recipes...</h2>
            </div>
            <div class="recipe-details">
                <button type="button" class="recipe-close-btn">
                    <i class="fas fa-times"></i>
                </button>
                <div class="recipe-details-content"></div>
            </div>
        </section>
    </main>
    <jsp:include page="Footer.jsp" />
    <script src="js/recipe.js"></script>
</body>
</html>