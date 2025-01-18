/* script.js for recipe feature */

const searchBox = document.querySelector('.searchBox');
const searchBtn = document.querySelector('.searchBtn');
const recipeContainer = document.querySelector('.recipe-container');
const recipeDetailsContent = document.querySelector('.recipe-details-content');
const recipeCloseBtn = document.querySelector('.recipe-close-btn');

// Sample Recipe Data (Expand this as needed)

const recipes = [
    {
        strMeal: "Tomato Soup",
        strArea: "American/Various",
        strCategory: "Soup",
        strMealThumb: "TomatoSoup.jpg",
        strInstructions: "Heat olive oil, sauté onion and carrots until softened. Add crushed tomatoes, broth, and oregano. Simmer, blend until smooth, season with salt and pepper. Add cream if desired.",
        ingredients: [
            { ingredient: "Olive oil", measure: "2 tbsp", fresh2you: false },
            { ingredient: "Onion", measure: "1", fresh2you: true },
            { ingredient: "Carrots", measure: "2", fresh2you: true },
            { ingredient: "Crushed tomatoes", measure: "2 (28 oz) cans", fresh2you: false },
            { ingredient: "Vegetable broth", measure: "4 cups", fresh2you: false },
            { ingredient: "Dried oregano", measure: "1 tsp", fresh2you: false },
            { ingredient: "Salt", measure: "To taste", fresh2you: false },
            { ingredient: "Pepper", measure: "To taste", fresh2you: false },
            { ingredient: "Cream/Milk", measure: "As desired", fresh2you: false },
        ],
    },
    {
        strMeal: "Guacamole",
        strArea: "Mexican",
        strCategory: "Dip",
        strMealThumb: "Guacamole.jpg",
        strInstructions: "Mash avocados. Add chopped onion, cilantro, lime juice, and salt. Mix well. Add jalapeño if desired.",
        ingredients: [
            { ingredient: "Avocados", measure: "3", fresh2you: true },
            { ingredient: "Onion", measure: "1/2", fresh2you: true },
            { ingredient: "Cilantro", measure: "1/4 cup", fresh2you: true },
            { ingredient: "Lime juice", measure: "2 tbsp", fresh2you: false },
            { ingredient: "Salt", measure: "1/2 tsp", fresh2you: false },
            { ingredient: "Jalapeño", measure: "1/2", fresh2you: false },
        ],
    },
    {
        strMeal: "Coleslaw",
        strArea: "American/Various",
        strCategory: "Salad",
        strMealThumb: "Coleslaw.jpg",
        strInstructions: "Combine shredded cabbage, carrots, and onion. Whisk together mayonnaise, vinegar, sugar, salt, and pepper. Pour over vegetables and toss. Refrigerate.",
        ingredients: [
            { ingredient: "Cabbage", measure: "1 head", fresh2you: true },
            { ingredient: "Carrots", measure: "2", fresh2you: true },
            { ingredient: "Onion", measure: "1/2", fresh2you: true },
            { ingredient: "Mayonnaise", measure: "1/2 cup", fresh2you: false },
            { ingredient: "Apple cider vinegar", measure: "2 tbsp", fresh2you: false },
            { ingredient: "Sugar", measure: "1 tbsp", fresh2you: false },
            { ingredient: "Salt", measure: "To taste", fresh2you: false },
            { ingredient: "Pepper", measure: "To taste", fresh2you: false },
        ],
    },
    {
        strMeal: "Mashed Potatoes",
        strArea: "American/Various",
        strCategory: "Side Dish",
        strMealThumb: "MashedPotatoes.jpg",
        strInstructions: "Boil potatoes until tender. Drain. Heat milk and butter. Mash potatoes with milk mixture. Season with salt and pepper.",
        ingredients: [
            { ingredient: "Potatoes", measure: "2 lbs", fresh2you: true },
            { ingredient: "Milk/Cream", measure: "1/2 cup", fresh2you: false },
            { ingredient: "Butter", measure: "4 tbsp", fresh2you: false },
            { ingredient: "Salt", measure: "To taste", fresh2you: false },
            { ingredient: "Pepper", measure: "To taste", fresh2you: false },
        ],
    },
    {
        strMeal: "Pea Soup",
        strArea: "Various",
        strCategory: "Soup",
        strMealThumb: "PeaSoup.jpg",
        strInstructions: "Sauté onion. Add broth and simmer. Add peas and cook until tender. Blend until smooth. Season with salt and pepper.",
        ingredients: [
            { ingredient: "Olive oil", measure: "1 tbsp", fresh2you: false },
            { ingredient: "Onion", measure: "1", fresh2you: true },
            { ingredient: "Vegetable broth", measure: "4 cups", fresh2you: false },
            { ingredient: "Frozen peas", measure: "2 cups", fresh2you: false },
            { ingredient: "Salt", measure: "To taste", fresh2you: false },
            { ingredient: "Pepper", measure: "To taste", fresh2you: false },
        ],
    },
    {
        strMeal: "Spinach Dip",
        strArea: "American",
        strCategory: "Dip",
        strMealThumb: "SpinachDip.jpg",
        strInstructions: "Combine thawed spinach, artichoke hearts, cream cheese, mayonnaise, Parmesan, and garlic. Mix well. Refrigerate.",
        ingredients: [
            { ingredient: "Frozen spinach", measure: "10 oz", fresh2you: false },
            { ingredient: "Artichoke hearts", measure: "1 (14 oz) can", fresh2you: false },
            { ingredient: "Cream cheese", measure: "8 oz", fresh2you: false },
            { ingredient: "Mayonnaise", measure: "1/2 cup", fresh2you: false },
            { ingredient: "Parmesan cheese", measure: "1/4 cup", fresh2you: false },
            { ingredient: "Garlic", measure: "1 clove", fresh2you: true },
            { ingredient: "Salt", measure: "To taste", fresh2you: false },
            { ingredient: "Pepper", measure: "To taste", fresh2you: false },
        ],
    },
    {
        strMeal: "Beet Salad",
        strArea: "Various",
        strCategory: "Salad",
        strMealThumb: "BeetsSalad.jpg",
        strInstructions: "Slice or cube cooked beets. Combine with mixed greens and goat cheese. Drizzle with balsamic vinaigrette.",
        ingredients: [
            { ingredient: "Beets", measure: "4", fresh2you: true },
            { ingredient: "Mixed greens/Lettuce", measure: "5 oz", fresh2you: true },
            { ingredient: "Goat cheese", measure: "4 oz", fresh2you: false },
            { ingredient: "Balsamic vinaigrette", measure: "2 tbsp", fresh2you: false },
        ],
    },
    {
        strMeal: "Caprese Salad",
        strArea: "Italian",
        strCategory: "Salad",
        strMealThumb: "CapreseSalad.jpg",
        strInstructions: "Arrange tomato and mozzarella slices. Place basil leaves between. Drizzle with balsamic glaze/olive oil (optional).",
        ingredients: [
            { ingredient: "Tomatoes", measure: "2", fresh2you: true },
            { ingredient: "Fresh mozzarella cheese", measure: "8 oz", fresh2you: false },
            { ingredient: "Fresh basil leaves", measure: "As needed", fresh2you: true },
            { ingredient: "Balsamic glaze", measure: "As desired", fresh2you: false },
            { ingredient: "Olive oil", measure: "As desired", fresh2you: false },
        ],
    },
    {
        strMeal: "Greek Salad",
        strArea: "Greek",
        strCategory: "Salad",
        strMealThumb: "GreekSalad.jpg",
        strInstructions: "Combine cucumber, tomatoes, onion, feta, and olives. Whisk together olive oil, vinegar, oregano, salt, and pepper. Pour over salad.",
        ingredients: [
            { ingredient: "Cucumber", measure: "1", fresh2you: true },
            { ingredient: "Tomatoes", measure: "2", fresh2you: true },
            { ingredient: "Red onion", measure: "1/2", fresh2you: true },
            { ingredient: "Feta cheese", measure: "4 oz", fresh2you: false },
            { ingredient: "Kalamata olives", measure: "1/2 cup", fresh2you: false },
            { ingredient: "Olive oil", measure: "3 tbsp", fresh2you: false },
            { ingredient: "Red wine vinegar", measure: "1 tbsp", fresh2you: false },
            { ingredient: "Dried oregano", measure: "1/2 tsp", fresh2you: false },
            { ingredient: "Salt", measure: "To taste", fresh2you: false },
            { ingredient: "Pepper", measure: "To taste", fresh2you: false },
        ],
    },
    {
        strMeal: "Ratatouille",
        strArea: "French",
        strCategory: "Vegetable",
        strMealThumb: "Ratatouilles.jpg",
        strInstructions: "Salt eggplant, let sit, rinse. Sauté onion, then garlic, then peppers, then zucchini and eggplant. Stir in tomatoes and herbs. Simmer until vegetables are tender. Season with salt and pepper.",
        ingredients: [
          { ingredient: "Eggplant", measure: "1 medium", fresh2you: true },
          { ingredient: "Zucchini", measure: "1 large", fresh2you: true },
          { ingredient: "Red bell pepper", measure: "1", fresh2you: true },
          { ingredient: "Yellow bell pepper", measure: "1", fresh2you: true },
          { ingredient: "Onion", measure: "1 large", fresh2you: true },
          { ingredient: "Garlic", measure: "2 cloves", fresh2you: true },
          { ingredient: "Crushed tomatoes", measure: "1 (28 oz) can", fresh2you: false },
          { ingredient: "Olive oil", measure: "2 tbsp", fresh2you: false },
          { ingredient: "Dried herbs", measure: "1 tsp", fresh2you: false },
          { ingredient: "Salt", measure: "To taste", fresh2you: false },
          { ingredient: "Pepper", measure: "To taste", fresh2you: false },
        ],
    },
    {
        strMeal: "Minestrone Soup",
        strArea: "Italian",
        strCategory: "Soup",
        strMealThumb: "MinestroneSoup.jpg",
        strInstructions: "Sauté onion, carrots, and celery. Add garlic, then tomatoes and broth. Simmer. Add beans, pasta, green beans, and zucchini. Simmer until pasta is cooked. Stir in parsley. Season with salt and pepper.",
        ingredients: [
            { ingredient: "Olive oil", measure: "1 tbsp", fresh2you: false },
            { ingredient: "Onion", measure: "1", fresh2you: true },
            { ingredient: "Carrots", measure: "2", fresh2you: true },
            { ingredient: "Celery", measure: "2 stalks", fresh2you: true },
            { ingredient: "Garlic", measure: "2 cloves", fresh2you: true },
            { ingredient: "Crushed tomatoes", measure: "1 (28 oz) can", fresh2you: false },
            { ingredient: "Vegetable broth", measure: "6 cups", fresh2you: false },
            { ingredient: "Cannellini beans", measure: "1 (15 oz) can", fresh2you: false },
            { ingredient: "Small pasta", measure: "1 cup", fresh2you: false },
            { ingredient: "Green beans", measure: "1 cup", fresh2you: true },
            { ingredient: "Zucchini", measure: "1 cup", fresh2you: true },
            { ingredient: "Fresh parsley", measure: "1/2 cup", fresh2you: true },
            { ingredient: "Salt", measure: "To taste", fresh2you: false },
            { ingredient: "Pepper", measure: "To taste", fresh2you: false },
        ],
    },
    {
        strMeal: "Panzanella",
        strArea: "Italian",
        strCategory: "Salad",
        strMealThumb: "Panzanella.jpg",
        strInstructions: "Toast bread cubes. Combine tomatoes, cucumber, onion, and basil. Whisk together vinegar, olive oil, salt, and pepper. Add bread to vegetables. Pour dressing over.",
        ingredients: [
            { ingredient: "Day-old bread", measure: "1 loaf (1 pound)", fresh2you: false },
            { ingredient: "Olive oil", measure: "2 tbsp (for bread) + 6 tbsp (for dressing)", fresh2you: false },
            { ingredient: "Tomatoes", measure: "2", fresh2you: true },
            { ingredient: "Cucumber", measure: "1", fresh2you: true },
            { ingredient: "Red onion", measure: "1/2", fresh2you: true },
            { ingredient: "Fresh basil leaves", measure: "1/2 cup", fresh2you: true },
            { ingredient: "Red wine vinegar", measure: "3 tbsp", fresh2you: false },
            { ingredient: "Salt", measure: "To taste", fresh2you: false },
            { ingredient: "Pepper", measure: "To taste", fresh2you: false },
        ],
    }
];

// Function to generate recipe card HTML based on a recipe object
function createRecipeCard(recipe) {
    return `
      <div class="recipe">
        <img src="${recipe.strMealThumb}" alt="${recipe.strMeal}">
        <h3>${recipe.strMeal}</h3>
        <p><span>${recipe.strArea}</span> Dish</p>
        <p>Belongs to <span>${recipe.strCategory}</span> Category</p>
        <button>View Recipe</button>
      </div>
    `;
  }
  
  const displayRecipes = (query = "") => {
    recipeContainer.innerHTML = "";
    const filteredRecipes = recipes.filter(recipe =>
      recipe.strMeal.toLowerCase().includes(query.toLowerCase())
    );
  
    if (filteredRecipes.length === 0) {
      recipeContainer.innerHTML = "<h2>No recipes found.</h2>";
      return;
    }
  
    filteredRecipes.forEach(meal => {
      recipeContainer.innerHTML += createRecipeCard(meal);
    });
  
    // Add event listeners to the newly created buttons
    const recipeButtons = recipeContainer.querySelectorAll('button');
    recipeButtons.forEach(button => {
      button.addEventListener('click', () => {
        openRecipePopup(filteredRecipes.find(recipe => recipe.strMeal === button.parentElement.querySelector('h3').textContent));
      });
    });
  };
  
  const fetchIngredientsList = (meal) => {
    return meal.ingredients.map(item => `<li>${item.measure} ${item.ingredient}</li>`).join('');
  };
  
  const openRecipePopup = (meal) => {
    let ingredientsListHTML = "";
    let fresh2YouIngredients = [];

    meal.ingredients.forEach(item => {
        ingredientsListHTML += `<li>${item.measure} ${item.ingredient}</li>`;
        if (item.fresh2you) {
            fresh2YouIngredients.push(item.ingredient);
        }
    });

    let fresh2YouMessage = "";
    if (fresh2YouIngredients.length > 0) {
        let ingredientsString = "";
        if (fresh2YouIngredients.length > 1) {
            ingredientsString = fresh2YouIngredients.slice(0, -1).join(', ') + ' and ' + fresh2YouIngredients.slice(-1);
        } else {
            ingredientsString = fresh2YouIngredients[0];
        }
        fresh2YouMessage = `<li class="fresh2you-message">Fresh2YouProduct: ${ingredientsString} are available at Fresh2You market.</li>`;
    }

    ingredientsListHTML += fresh2YouMessage;

    recipeDetailsContent.innerHTML = `
        <h2 class="recipeName">${meal.strMeal}</h2>
        <h3>Ingredients:</h3>
        <ul class="ingredientList">${ingredientsListHTML}</ul>
        <div class="recipeInstructions">
            <h3>Instructions:</h3>
            <p>${meal.strInstructions}</p>
        </div>
    `;
    recipeDetailsContent.parentElement.style.display = "block";
};
  
  recipeCloseBtn.addEventListener('click', () => {
    recipeDetailsContent.parentElement.style.display = "none";
  });
  
  searchBtn.addEventListener('click', (e) => {
    e.preventDefault();
    const searchInput = searchBox.value.trim();
    displayRecipes(searchInput);
  });
  
  displayRecipes(); // Initial display of all recipes
