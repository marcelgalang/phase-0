// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
prompt("What is your favorite food?");
console.log("That's mine too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var pound = "#";
while (pound.length < 12) {
console.log(pound);
pound = pound + "#"; }


// Functions

// Complete the `minimum` exercise.
function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
}

console.log(min(1,5))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  age:"old enough";
  food:["pizza", "burgers", "steak";]
  quirk: "allergic to bees"
}

// Reflection

// What are the biggest similarities and differences between JavaScript and Ruby?
// Both languages somewhat read like english and structures are similar.  JavaScript seems to not rely on inheritence as Ruby does.  Built-in methods seem more plentiful in Ruby.
// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
// The art of thinking  logically is proven to be even more valuable moving from language to language.
// How do you feel about diving into JavaScript after reading these chapters?
// I feel like I’m trying to speak french after learning spanish and translating everything to spanish first.  But it drives me to learn as much of JavaScript as I can as quickly as I can.