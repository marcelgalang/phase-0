// # 9.2.1
// # Pseudocode
// # Objective
// # -Create a list
// # -add an item with a quantity to list
// # -remove an item
// # -update quantity of something on the list
// # print list

// # in: random grocery list with quantities for items
// # out: add/delete/update the list and print it

// # steps:
// # -create an empty object of grocery_list
// # -manually enter some items to list
// # -print list
// # -delete something from the list
// # -print list
// # -add something with a quantity to the
// # -print the list
// # -update the quantity of what you just added
// # -print list


// # Initial Solution



// var itemIn =  document.getElementById(item)[0].value;
// document.write(itemIn)
// var quan = document.getElementById(quan)[0].value;
// document.write(quan)

// function formChanged() {
//     var itemIn = ...
//     var quan = ...
// }

// document.write(itemIn, quan)
// var grocery_list = {}
// grocery_list[ "itemIn" ] = "quan";

// // document.getElementsByTagName("h3")[0].innerHTML= grocery_list;

// document.write(grocery_list)

// function addItems(item, quan){

//   var grocery_list["item"]= "quan";
// };

// function removeItems(item, quan){

//   delete  grocery_list["item"]

// };

// document.getElementsByTagName("H1")[0].innerHTML="I completed release 2!";


var grocery_list = {
    "Lemonade": 2,
    "Tomatoes": 3,
    "Onions": 1,
    "Ice Cream": 4,

  };


console.log(grocery_list);

delete grocery_list["Lemonade"];

console.log(grocery_list);

grocery_list[ "Tomatoes" ] = 5;

console.log(grocery_list);

grocery_list[ "Frozen Pizza" ] = 12;

console.log(grocery_list);

// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I have been unsuccessful at incorporating HTML and pure JS together.  I wanted my html forms to feed my JavaScript.
// What was the most difficult part of this challenge?
// Getting HTML output to become JavaScript, which I felt close to accomplishing but ran out of time.
// Did an array or object make more sense to use and why?
// For the basic JS code, no.  That was straightforward manipulation of the object.