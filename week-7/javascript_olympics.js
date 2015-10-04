 // JavaScript Olympics

// I paired [with: Paul E. ] on this challenge.

// This challenge took me [1.25] hours.


// Bulk Up
var athlete = ["Sarah Hughes", "Ladies Singles"]


  function olympian(athlete){
    athlete.push("WIN")
       if (athlete[2] = "WIN")
        console.log(athlete[0] + " " + "won " + athlete[1]+ ".")

  }

olympian(athlete)


// Jumble your words

function reversed(string){
 return string.split("").reverse().join("");

}

var string = "This is a test!"

console.log(reversed(string))



// 2,4,6,8
var a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
b = [];

evenNumbers(a)
console.log(b)

function evenNumbers(numArray){

for (var i = 0; i < a.length; ++i) {
    if ((a[i] % 2) === 0) {
      if (a[i] != 0)
        b.push(a[i]);
    }
}
}



// "We built this city"
function Athlete(name, age, sports, quote){
  this.name = name;
  this.age = age;
  this.sport = sports;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// How to recall values  from an object.
// What are constructor functions?

// Constructor function type notation is preferred if you need to do some initial work before the object is created or require multiple instances of the object where each instance can be changed during the lifetime of the script.
// How are constructors different from Ruby classes (in your research)?

// Ruby classes inherit from it superstructure whereas constructors can be an object unto themselves.



