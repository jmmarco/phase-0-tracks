console.log("The script is loading!");

photo = document.getElementById('liz');

photo.style.border = "10px solid green";

container = document.getElementById("cont");

container.style.border = "10px solid purple";

var ourCollection = document.getElementsByTagName("div");

for (var i = 0; i < ourCollection.length; i++) {
  console.log(ourCollection[i]);
  ourCollection[i].style.border = "10px solid blue";
}

var newDiv = document.createElement("div");
var divContent = document.createTextNode("This is a test!!!!!!!!!!!!!!!!");
newDiv.appendChild(divContent);

var currentDiv = document.getElementById("cont");
document.body.insertBefore(newDiv, currentDiv);