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
