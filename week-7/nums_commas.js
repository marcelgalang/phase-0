// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Chris Mark.

// Pseudocode
// Input : An integer
// Output: String of number with commas
// Turn it into a string
// FOR var i equal to zero, less than or equal to the length of the integer, iterate every 3 characters
//  Insert comma before 4th character
//  IF number >= 1000, then insert comma after every 3 digits
//  ELSE return integer
//  END


// Initial Solution

function separateComma(integer) {
 var number = integer.toString().split("")
  var digits = integer.toString(),
      i = -3;

  while(number.length + i > 0) {
    number.splice(i,0, ",");
    i -= 4;
  }

  return number.join("");
}

console.log(separateComma(900))







// Refactored Solution

function separateComma(integer) {
 var number = integer.toString().split(""),
     digits = integer.toString(),
      i = -3;

  while(number.length + i > 0) {
    number.splice(i,0, ",");
    i -= 4;
  }

  return number.join("");


// Your Own Tests (OPTIONAL)



// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// In ruby I used integer values to determine each section of numbers.  This time we used the digit length.  Javascript was accommodating to using .length.
// What did you learn about iterating over arrays in JavaScript?
// Arrays become dynamic.  If the length is lengthened then every element can be effected.
// What was different about solving this problem in JavaScript?
// The logic was the same but finding the syntax was a challenge.  It’s as if we were translating through ruby to get to javascript.
// What built-in methods did you find to incorporate in your refactored solution?
// We did not have too much refactoring.  .join and .spcie were the methods we used.