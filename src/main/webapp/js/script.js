let searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () =>{
	console.log("I'm working...")
	searchForm.classList.toggle('active');
}

let loginForm = document.querySelector('.login-form');

document.querySelector('#login-btn').onclick = () =>{
	console.log("I'm working...")
	loginForm.classList.toggle('active');
}

let navbar = document.querySelector('.navbar');

document.querySelector('#menu-btn').onclick = () =>{
	console.log("here")
	navbar.classList.toggle('active');
}