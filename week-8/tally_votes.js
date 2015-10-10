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

// for (var voteCount in votes) {
//    if (votes.hasOwnProperty(voteCount)) {
//        var officers = votes[voteCount];
//         for (var position in officers) {
//           for(var i=0; i<1; i++){
//             if (position=="president"){
//               pres.push(officers[position]);
//           }
//        }
//     }
// }
// }
// }

// function vicePresident(){
// var count = 0;

// for (var voteCount in votes) {
//    if (votes.hasOwnProperty(voteCount)) {
//        var officers = votes[voteCount];
//         for (var position in officers) {
//           for(var i=0; i<1; i++){
//             if (position=="vicePresident"){
//               vp.push(officers[position]);
//           }
//        }
//     }
// }
// }
// }

// function secretary(){
// var count = 0;

// for (var voteCount in votes) {
//    if (votes.hasOwnProperty(voteCount)) {
//        var officers = votes[voteCount];
//         for (var position in officers) {
//           for(var i=0; i<1; i++){
//             if (position=="secretary"){
//               sec.push(officers[position]);
//           }
//        }
//     }
// }
// }
// }

// function treasurer(){
// var count = 0;

// for (var voteCount in votes) {
//    if (votes.hasOwnProperty(voteCount)) {
//        var officers = votes[voteCount];
//         for (var position in officers) {
//           for(var i=0; i<1; i++){
//             if (position=="treasurer"){
//               tres.push(officers[position]);
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



// voteCount.president=presCount
// voteCount.vicePresident=vpCount
// voteCount.secretary=secCount
// voteCount.treasurer=tresCount

// officers.president=pKeysSorted.pop()
// officers.vicePresident=vpKeysSorted.pop()
// officers.secretary=secKeysSorted.pop()
// officers.treasurer=tresKeysSorted.pop()

// console.log(voteCount)
// console.log(officers)

// __________________________________________
// Refactored Solution
function election(){
var count = 0;

for (var voteCount in votes) {
   if (votes.hasOwnProperty(voteCount)) {
       var officers = votes[voteCount];
        for (var position in officers) {
          for(var i=0; i<1; i++){
            if (position=="president"){
              pres.push(officers[position]);}
            else if (position=="vicePresident"){
              tally[1].push(officers[position]);}
            else if  (position=="secretary"){
              tally[2].push(officers[position]);}
            else if (position=="treasurer"){
              tally[3].push(officers[position]);}

            }
          }
       }
    }
}



// function vicePresident(){
// var count = 0;

// for (var voteCount in votes) {
//    if (votes.hasOwnProperty(voteCount)) {
//        var officers = votes[voteCount];
//         for (var position in officers) {
//           for(var i=0; i<1; i++){
//             if (position=="vicePresident"){
//               vp.push(officers[position]);

//           }
//        }
//     }
// }
// }
// }

// function secretary(){
// var count = 0;

// for (var voteCount in votes) {
//    if (votes.hasOwnProperty(voteCount)) {
//        var officers = votes[voteCount];
//         for (var position in officers) {
//           for(var i=0; i<1; i++){
//             if (position=="secretary"){
//               sec.push(officers[position]);
//           }
//        }
//     }
// }
// }
// }

// function treasurer(){
// var count = 0;

// for (var voteCount in votes) {
//    if (votes.hasOwnProperty(voteCount)) {
//        var officers = votes[voteCount];
//         for (var position in officers) {
//           for(var i=0; i<1; i++){
//             if (position=="treasurer"){
//               tres.push(officers[position]);
//           }
//        }
//     }
// }
// }
// }

var tally = [ [], [], [], [] ]
var pres = []
// var vp =[]
// var sec =[]
// var tres=[]

election();


var presCount = addCount(pres);
addCount(pres);


function addCount(title){
  var count = { }
  for (var i=0, j = title.length; i < j; i++) {

    count[title[i]] = (count[title[i]] || 0) +1;
}
return count ;
}

// var offCount = { };
// for(var i = 0; i < tally.length; i++) {
//     var tally = tally[i];
//     for(var j = 0; j < tally.length; j++) {
//         offCount[talley[i]] = (offCount[talley[i]] || 0) +1;);

//     }
// }




// function count(){
// for (tally[0]in talley){
// function offCount([off]){
//   for (var i=0, j = off.length; i< j; i++) {
//   offCount[off[i]] = (offCount[off[i]] || 0) +1;
//   }
// }
// }
// var offCount = { };
// for (var i=0, j = off.length; i< j; i++) {
//   offCount[off[i]] = (offCount[off[i]] || 0) +1;
// }

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

// console.log(presCount, vpCount);

// var sort = Object.keys(offArr).sort(function(a,b){return offArr[a]-offArr[b]}))
function keySort(offCount){
  Object.keys(offCount).sort(function(a,b){
    return offCount[b]-offCount[a]


  })}

// var pKeysSorted = Object.keys(presCount).sort(function(a,b){return presCount[a]-presCount[b]})


// var vpKeysSorted = Object.keys(vpCount).sort(function(a,b){return vpCount[a]-vpCount[b]})


// // console.log(secCount)
// var secKeysSorted = Object.keys(secCount).sort(function(a,b){return secCount[a]-secCount[b]})


// var tresKeysSorted = Object.keys(tresCount).sort(function(a,b){return tresCount[a]-tresCount[b]})

// function winner(){
// Object.keys(offCount).forEach(function(key){
//   max = (offCount[key] > offCount[max]) ? +key : max;
// });}


// function winner(b){Object.keys(b).reduce(function(max,key){
//   return (max === undefined || b[key] > b[max]) ? +key : max;
// });}
// console.log(winner(presCount))

voteCount.president=addCount(pres);
// voteCount.vicePresident=vpCount
// voteCount.secretary=secCount
// voteCount.treasurer=tresCount

officers.president=presCount[0]
// officers.vicePresident=vpKeysSorted.pop()
// officers.secretary=secKeysSorted.pop()
// officers.treasurer=tresKeysSorted.pop()

// presClass = {

//   var offCount = { };
// for (var i=0, j = off.length; i< j; i++) {
//   offCount[off[i]] = (offCount[off[i]] || 0) +1;
// }
//   sort: Object.keys(offArr).sort(function(a,b){return offArr[a]-offArr[b]});
//   pop: .pop()
// }


// }

console.log(voteCount.president)
console.log(officers)




// __________________________________________
// Reflection






// __________________________________________
// Test Code:  Do not alter code below this line.


// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// assert(
//   (voteCount.president["Bob"] === 3),
//   "Bob should receive three votes for President.",
//   "1. "
// )

// assert(
//   (voteCount.vicePresident["Bob"] === 2),
//   "Bob should receive two votes for Vice President.",
//   "2. "
// )

// assert(
//   (voteCount.secretary["Bob"] === 2),
//   "Bob should receive two votes for Secretary.",
//   "3. "
// )

// assert(
//   (voteCount.treasurer["Bob"] === 4),
//   "Bob should receive four votes for Treasurer.",
//   "4. "
// )

// assert(
//   (officers.president === "Louise"),
//   "Louise should be elected President.",
//   "5. "
// )

// assert(
//   (officers.vicePresident === "Hermann"),
//   "Hermann should be elected Vice President.",
//   "6. "
// )

// assert(
//   (officers.secretary === "Fred"),
//   "Fred should be elected Secretary.",
//   "7. "
// )

// assert(
//   (officers.treasurer === "Ivy"),
//   "Ivy should be elected Treasurer.",
//   "8. "
// )
