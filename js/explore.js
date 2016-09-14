/*
Create an empty array to store the reversed string.
Loop through each character in the string starting from the end (be sure to subtract one, and include zero).
Push each string into the array. Join the letters in the array, output to the console and return the reversed string.
*/

function reverse(string) {
	// Create an array to store each reversed letter
	var reversed = [];

	// Iterate through each letter
	for (var i = string.length -1; i >= 0 ; i--) {
		// Push each reversed letter to the array
		reversed.push(string[i]);
	}

	// Output to the console
	console.log(reversed.join(""));
	// Return the reversed string
	return reversed.join("");
}

// Call the function with an example string
reverse("hello");
