// Check to see if the script is loading
console.log("The script is loading!");

// Grab the image element with id of 'liz'
photo = document.getElementById('liz');

// Change the border of it to green
photo.style.border = "10px solid green";

// Grab a div with id of 'cont'
container = document.getElementById("cont");

// Change the border to purple
container.style.border = "10px solid purple";

// Grab all the div's in the page
var ourCollection = document.getElementsByTagName("div");

// Iterate through all div's and make the border blue
for (var i = 0; i < ourCollection.length; i++) {
  // console.log(ourCollection[i]);
  ourCollection[i].style.border = "10px solid blue";
}

// Create a new div element
var newDiv = document.createElement("div");

// Create a node of text
var divContent = document.createTextNode("This is a test!!!!!!!!!!!!!!!!");

// Append the text node to the previously create div
newDiv.appendChild(divContent);

// Insert the new created div before the existing div
document.body.insertBefore(newDiv, container);

// Add event listener
function changeToRed(event) {
  // Add some debug output
  console.log("Image was clicked!!!");
  console.log(event);
  photo.style.border = "5px solid red";
}

// Call the event listener
photo.addEventListener("click", changeToRed);
