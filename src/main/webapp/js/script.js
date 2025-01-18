let searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () =>{
	console.log("I'm working...")
	searchForm.classList.toggle('active');
}