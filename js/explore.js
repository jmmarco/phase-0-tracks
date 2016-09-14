/*
Create an empty array to store the revered string
Loop through each character in the string starting from the end(be sure to subtract one,
Javascript counts from zero). Push each string into the array. Output to the console and return the reversed string.
*/

function reverse(string) {
	var reversed = [];

	for (var i = string.length -1; i >= 0 ; i--) {
		reversed.push(string[i]);
	}

	// Output to the console
	console.log(reversed.join(""));
	// Return the reversed string
	return reversed.join("");
}

// Call the function with an example string
reverse("hello");
