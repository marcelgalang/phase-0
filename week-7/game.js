// // Design Basic Game Solo Challenge

// // This is a solo challenge
//Your mission description: Beat the computer at Rock Paper Scissors.  The computer does not only randomly choose it’s throws.  It uses basic strategy from studies of probability and psychology.
// // Overall mission: beat computer throw
// // Goals: choose winning hand
// // Characters:Player and Computer
// // Objects: computer Choice, whoWins(compare choices), keep score/ history, game play

// Key: Rock= R, Paper =P Scissors= S

// Create a function that gets players throw
//     Ask R,P or S
//     validate that it is R, P or S

// Create a function that get computers throw
//     control flow map of last two throws and throw to use
//         -R, R  throw S
//         -P, P throw R
//         -SS throw P
//     if only last throw then map what throw to use based on last player throw and win/lose value
//         -R win throw P
//         -P win throw  S
//         -S win throw R
//         -R lose throw S
//         -P lose throw R
//         -S lose throw P

//     if no throws make a random throw or RPS

// make random throw function
//     33% R, 33% P, 33% S

// Create function to compare player choice with computer choice
//     if equal choices return tie
//     Player R and computer S, player P and computer R or Player S and computer P returns
//     “You win” with a value of W
//     otherwise print “I win”, give a value of L

// Create scores function where
//     result of W adds to player score
//     result of L adds to computer score

// create an array to capture the last two throws and the most current throw at the beginning

// Set game play to five rounds
//Initial Solution


// var playerScore = 0;
// var computerScore = 0;
// var history = [];
// history[1]= undefined;
// history[2]= undefined;

// function welcomeMessage() {
//     alert("I am a master of Jan Ken Po.  I have studied the ancient art of Rock, Paper, Scissors for at least three hours. I use the odds to my favor and your own mind against you.  There is nothing random about my throws.  Best of five rounds wins.  Prepare for battle!");
// }

// function playGame(rounds) {
//     welcomeMessage();
//     do {
//         var player = playerGuess();
//         resultCompile(player);
//         var computer = computerGuess();
//         var result = compareGuesses(player, computer);
//         updateScores(result, 1);
//         if (result !== 0) {
//             rounds--;
//         }
//     } while (rounds > 0);

//     if (playerScore > computerScore) {
//         alert("You're score is " + playerScore + " points compared to my score " + computerScore + " points. I am defeated! You win!");
//     } else {
//         alert("I have " + computerScore + " points compared to your " + playerScore + " points. You are defeated!");
//     }

//     clearScores();

// }

// function playerGuess() {
//     var playerChoice = prompt("Choose your weapon; Rock, Paper, or Scissors.");
//     if (playerChoice === "Rock" || playerChoice === "Paper" || playerChoice === "Scissors") {
//         return playerChoice;
//     }
//     alert("You typed something else or did not spell your choice correctly please try again!");
//     playerGuess();
// }

// function resultCompile(playerGuess){

//         history.unshift(playerGuess);

// }


// function randChoice(){
//   var choice = Math.random();
//   if(choice < 0.34) {
//     return "Rock";
//   }
//   if(choice <= 0.67) {
//     return "Paper";
//   }
//   return "Scissors";
// }

// function computerGuess() {
//     if (history[1] == "Rock" && history[2] == "Rock")return "Scissors";
//     else if (history[1] == "Paper" && history[2] == "Paper")return "Rock";
//     else if (history[1] == "Scissors" && history[2] == "Scissors") return "Paper";
//     else if (history[1] == "Rock" && 1) return "Paper";
//     else if (history[1] == "Paper" && 1) return "Scissors";
//     else if (history[1] == "Scissors" && 1) return "Rock";
//     else if (history[1] == "Rock" && 2)return "Scissors";
//     else if (history[1] == "Scissors" && 2) return "Paper";
//     else if (history[1] == "Paper" && 2)  return "Rock";
//     else  return randChoice();
// }


// function compareGuesses(userGuess, compGuess) {

//     alert("Player chose: " + userGuess + " and the computer chose: " + compGuess + "!");

//     if (userGuess === compGuess) {
//         alert("You and the computer guessed the same thing! Go again, no score added!");
//         return 0;
//     }

//     if (
//     (userGuess === "Rock" && compGuess === "Scissors") || (userGuess === "Paper" && compGuess === "Rock") || (userGuess === "Scissors" && compGuess === "Paper")) {
//         alert("You win the round!");
//         return 1;
//     }
//     else
//     alert("I win the round!");
//     return 2;
// }

// function updateScores(result, points) {
//     if (result === 1) {
//         playerScore += points;
//         alert("The score is:  " + playerScore + " to  " + computerScore);
//     }
//     if (result === 2) {
//         computerScore += points;
//         alert("The score is:  " + playerScore + " to  " + computerScore);
//     }
//     if (result === 0) {
//         computerScore += 0;
//         playerScore += 0;
//     }
// }

// function clearScores() {
//     playerScore = 0;
//     computerScore = 0;
// }


// playGame(5);

//Refactored

var playerScore = 0;
var computerScore = 0;
var history = [];
history[1]= undefined;
history[2]= undefined;

function welcomeMessage() {
    alert("I am a master of Jan Ken Po.  I have studied the ancient art of Rock, Paper, Scissors for at least three hours. I use the odds to my favor and your own mind against you.  There is nothing random about my throws.  Best of five rounds wins.  Prepare for battle!");
}

function playGame(rounds) {
    welcomeMessage();
    do {
        var player = playerThrow();
        resultCompile(player);
        var computer = computerThrow();
        var result = compareThrows(player, computer);
        updateScores(result, 1);
        if (result !== 0) {
            rounds--;
        }
    } while (rounds > 0);

    if (playerScore > computerScore) {
        alert("You're score is " + playerScore + " points compared to my score " + computerScore + " points. I am defeated! You win!");
    } else {
        alert("I have " + computerScore + " points compared to your " + playerScore + " points. You are defeated!");
    }

    clearScores();

}

function playerThrow() {
    var playerChoice = prompt("Choose your weapon; Rock, Paper, or Scissors.");
    if (playerChoice === "Rock" || playerChoice === "Paper" || playerChoice === "Scissors") {
        return playerChoice;
    }
    alert("You typed something else or did not spell your choice correctly please try again!");
    playerThrow();
}

function resultCompile(playerThrow){

        history.unshift(playerThrow);

}


function randChoice(){
  var choice = Math.random();
  if(choice < 0.34) {
    return "Rock";
  }
  if(choice <= 0.67) {
    return "Paper";
  }
  return "Scissors";
}

function computerThrow() {
    if (history[1] == "Rock" && history[2] == "Rock")return "Scissors";
    else if (history[1] == "Paper" && history[2] == "Paper")return "Rock";
    else if (history[1] == "Scissors" && history[2] == "Scissors") return "Paper";
    else if (history[1] == "Rock" && 1) return "Paper";
    else if (history[1] == "Paper" && 1) return "Scissors";
    else if (history[1] == "Scissors" && 1) return "Rock";
    else if (history[1] == "Rock" && 2)return "Scissors";
    else if (history[1] == "Scissors" && 2) return "Paper";
    else if (history[1] == "Paper" && 2)  return "Rock";
    else  return randChoice();
}


function compareThrows(userHand, compHand) {

    alert("Player chose: " + userHand + " and the computer chose: " + compHand + "!");

    if (userHand === compHand) {
        alert("You and the computer guessed the same thing! Go again, no score added!");
        return 0;
    }

    if (
    (userHand === "Rock" && compHand === "Scissors") || (userHand === "Paper" && compHand === "Rock") || (userHand === "Scissors" && compHand === "Paper")) {
        alert("You win the round!");
        return 1;
    }
    else
    alert("I win the round!");
    return 2;
}

function updateScores(result, points) {
    if (result === 1) {
        playerScore += points;
        alert("The score is:  " + playerScore + " to  " + computerScore);
    }
    if (result === 2) {
        computerScore += points;
        alert("The score is:  " + playerScore + " to  " + computerScore);
    }
    if (result === 0) {
        computerScore += 0;
        playerScore += 0;
    }
}

function clearScores() {
    playerScore = 0;
    computerScore = 0;
}


playGame(5);



// 7.7 Reflection
// What was the most difficult part of this challenge?
// I had the biggest challenges dealing with the throw history array and where to place it.  Eventually I was able to figure out how to manipulate the control flow in the middle of the loop of game play.
// What did you learn about creating objects and functions that interact with one another?
// Order is everything when there is a loop and the values are dynamic.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I used unshift for the first time and it was very effective.
// How can you access and manipulate properties of objects?
// You can call them from functions throughout the program.