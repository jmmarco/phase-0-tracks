/*
Release 0: Find the Longest Phrase
- Grab an array of phrases
- Loop through each phrase:
  - If the length of the current phrase is greater than the length of the previous phrase
  - Store the length of it in a 'longestSoFar' variable
  - Store the actual phrase in a 'result' variable
- Print some output
- Return the result variable
*/

// Program Logic

function longestPhrase(phrases) {

  var longestSoFar = 0,
    result;

  phrases.forEach(function(phrase) {
    if (phrase.length > longestSozFar) {
      longestSoFar = phrase.length;
      result = phrase;
    }

  });

  console.log("The longest phrase is:", result);
  console.log("And it contains a total of: " + result.length + " characters!");
  return result;
}

// Driver code
// longestPhrase(["long phrase","longest phrase","longer phrase"]);
// longestPhrase(["Flux Capacitor", "DeLorean", "Marty Mc Fly", "Mr. Fusion", "Dr. Emmett Brown"]);

/*
Release 1: Find a Key-Value Match
- Grab two objects
- Loop through each key and value of the first object
  - if the key and value match any of the keys and values in the second object, return true, otherwise return false
  */

function compareKeyValue(obj1, obj2) {
  // for..in loops are a great way to iterate through objects in JS
  for (var key in obj1) {
    // Check if the key-value pair of the first object matches the one on the second object
    if ((key in obj2) && (obj1[key] == obj2[key]))
      return true;
  }
  // If we got to this point, then no key-values pairs matched
  return false;
}

// Driver code
// a = compareKeyValue({ name: "Steven", age: 54 }, { name: "Tamir", age: 54 });
// b = compareKeyValue({ type: "Car", engine: "diesel" }, { type: "Car", engine: "petrol" });
// console.log("a is:", a);
// console.log("b is:", b);

/*
Release 2: Generate Random Test Data
Take an integer to calculate the length and build an array of the given length.
Create an alphabet variable to hold all characters of the alphabet
Create helper variables to hold a random number and a randomly generated word
Iterate through the given array:
  - Generate a random number and store it
  - Empty the word variable
  - While the length of the word is less than the randomly generated number:
    - Save each character to the word variable
  - Save the generated word to the current position
Return the result
*/
