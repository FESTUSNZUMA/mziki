
var sliderimages=  document.getElementsByClassName('sliderImg')

//slide()
var hambugermenu = document.getElementById("hambugermenu");
var navbarContainer = document.getElementsByClassName("navbarContainer")[0]
hambugermenu.addEventListener("click", function(){
	alert("wow")
	navbarContainer.classList.toggle("show")
})