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

  var longestSoFar = 0, result;

  phrases.forEach(function(phrase) {
    if (phrase.length > longestSoFar) {
      longestSoFar = phrase.length;
      result = phrase;
    }

  });

  console.log("The longest phrase is:", result);
  return result;
}


longestPhrase(["long phrase","longest phrase","longer phrase"]);