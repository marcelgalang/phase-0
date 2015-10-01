// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

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

