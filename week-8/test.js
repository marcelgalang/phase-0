
var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {};
gradebook.joseph = {};
gradebook.susan = {};
gradebook.william = {};
gradebook.elizabeth = {};
gradebook.joseph.testScores = scores[0];
gradebook.susan.testScores = scores[1];
gradebook.william.testScores = scores[2];
gradebook.elizabeth.testScores = scores[3];
// gradebook.addscore = {};
function addscore(name,score){
 if (name === "Joseph"){
  scores[0].push(score);}
 else if (name === "Susan"){
   scores[1].push(score);}
  else if (name === "William"){
    scores[2].push(score);}
  else if (name === "Elizabeth"){
    scores[2].push(score);}
  else {
    false;}
}

addScore("Susan", 80);