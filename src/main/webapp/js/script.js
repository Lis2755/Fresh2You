let searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () =>{
	console.log("I'm working...")
	searchForm.classList.toggle('active');
	loginForm.classList.remove('active');
	navbar.classList.remove('active');
}

let loginForm = document.querySelector('.login-form');

document.querySelector('#search-btn').onclick = () =>{
	console.log("I'm working...")
	searchForm.classList.toggle('active');
	loginForm.classList.remove('active');
	navbar.classList.remove('active');
}

let navbar = document.querySelector('.navbar');

document.querySelector('#menu-btn').onclick = () =>{
	console.log("here")
	navbar.classList.toggle('active');
	searchForm.classList.remove('active');
	loginForm.classList.remove('active');
}

window.onscroll = () =>{
	searchForm.classList.remove('active');
	loginForm.classList.remove('active');
	navbar.classList.remove('active');
}
