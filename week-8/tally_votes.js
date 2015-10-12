// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}
// Pseudocode


// __________________________________________
// Initial Solution
// function president(){
// var count = 0;

// for (var voter in votes) {
//    if (votes.hasOwnProperty(voter)) {
//        var list = votes[voter];
//         for (var position in list) {
//           for(var i=0; i<1; i++){
//             if (position=="president"){
//               pres.push(list[position]);
//           }
//        }
//     }
// }
// }
// }

// function vicePresident(){
// var count = 0;

// for (var voter in votes) {
//    if (votes.hasOwnProperty(voter)) {
//        var list = votes[voter];
//         for (var position in list) {
//           for(var i=0; i<1; i++){
//             if (position=="vicePresident"){
//               vp.push(list[position]);
//           }
//        }
//     }
// }
// }
// }

// function secretary(){
// var count = 0;

// for (var voter in votes) {
//    if (votes.hasOwnProperty(voter)) {
//        var list = votes[voter];
//         for (var position in list) {
//           for(var i=0; i<1; i++){
//             if (position=="secretary"){
//               sec.push(list[position]);
//           }
//        }
//     }
// }
// }
// }

// function treasurer(){
// var count = 0;

// for (var voter in votes) {
//    if (votes.hasOwnProperty(voter)) {
//        var list = votes[voter];
//         for (var position in list) {
//           for(var i=0; i<1; i++){
//             if (position=="treasurer"){
//               tres.push(list[position]);
//           }
//        }
//     }
// }
// }
// }



// var pres = []
// var vp =[]
// var sec =[]
// var tres=[]

// president();
// vicePresident();
// secretary()
// treasurer()
// // console.log(pres, vp)


// var presCount = { };
// for (var i=0, j = pres.length; i< j; i++) {
//   presCount[pres[i]] = (presCount[pres[i]] || 0) +1;
// }

// var vpCount = { };
// for (var i=0, j = vp.length; i< j; i++) {
//   vpCount[vp[i]] = (vpCount[vp[i]] || 0) +1;
// }

// var secCount = { };
// for (var i=0, j = sec.length; i< j; i++) {
//   secCount[sec[i]] = (secCount[sec[i]] || 0) +1;
// }

// var tresCount = { };
// for (var i=0, j = tres.length; i< j; i++) {
//   tresCount[tres[i]] = (tresCount[tres[i]] || 0) +1;
// }

// // console.log(presCount, vpCount);

// var pKeysSorted = Object.keys(presCount).sort(function(a,b){return presCount[a]-presCount[b]})


// var vpKeysSorted = Object.keys(vpCount).sort(function(a,b){return vpCount[a]-vpCount[b]})


// // console.log(secCount)
// var secKeysSorted = Object.keys(secCount).sort(function(a,b){return secCount[a]-secCount[b]})


// var tresKeysSorted = Object.keys(tresCount).sort(function(a,b){return tresCount[a]-tresCount[b]})



// voter.president=presCount
// voter.vicePresident=vpCount
// voter.secretary=secCount
// voter.treasurer=tresCount

// list.president=pKeysSorted.pop()
// list.vicePresident=vpKeysSorted.pop()
// list.secretary=secKeysSorted.pop()
// list.treasurer=tresKeysSorted.pop()

// console.log(voter)
// console.log(list)

// __________________________________________
// Refactored Solution

for(var voter in votes){

  if(votes.hasOwnProperty(voter)){
    var list = votes[voter];

    for(var position in list){
       if (voteCount[position][list[position]] == undefined){
      voteCount[position][list[position]] = 1
       }
      else {
         voteCount[position][list[position]] += 1
       }

     }
    }
}

for(var position in officers){
  var votedPosition = voteCount[position];
  var highestCount = 0;

  for(var winner in votedPosition){
    var count = votedPosition[winner];

    if (count > highestCount){
      officers[position] = winner;
      highestCount = count;
    }
  }
 }

console.log(voteCount)
console.log(officers)


// __________________________________________
// Reflection
What did you learn about iterating over nested objects in JavaScript?
It is the same as Ruby where you need to nest your looping inside of another loop.  It helped me to write out the hierarchy of the nesting.
Were you able to find useful methods to help you with this?
hasOwnProperty was essential.  It was my first time using it.  I also learned about .keys and .sort even though we ultimately ended up refactoring those out.
What concepts were solidified in the process of working through this challenge?
Loop for “big loops”, meaning look for DRY ways to minimize what you need to do/write.  I am also starting to think of functions(methods in Ruby) as machines that are always on and that just need you to drop your input into.





// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
