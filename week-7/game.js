// // Design Basic Game Solo Challenge

// // This is a solo challenge

// // Your mission description: Create a RPS game with smart choices, not random
// // Overall mission: beat computer throw
// // Goals: choose hand
// // Characters:NA
// // Objects: computerChoice, whoWins, history
// // Functions:

// // Pseudocode
// //input: players inputs her throw
// // output: computer’s throw compared to players throw


// Ask player to pick throw
//     -print to screen “Choose your weapon. Rock, paper or scissors?”
// input creates userChoice


// Have computer determine throw

//     -create function that asks
//         -if last two userChoice equals rock, rock
//             T S
// -if last two userChoice equals P, P
//             T R
// -if last two userChoice equals S, S
//             T P
//         -else if userChoice last throw or null(first throw of game)
//             throw random throw
// -else if last throw was a winning rock
// throw P
// -elsif LT was WP
// T S
// -else if LT was WS
// T R
// -ei LT was Losing Rock
// T S
// -ei LT was LS
// T P
// -ei LT LP
// T R





// Compare userChoice to computerChoice

//     if userChoice is the same as computerChoice
//     print “Tie”
// if userChoice is rock and computerChoice is paper
//     print “You lose!”
// if userChoice is rock and computerChoice is Sc
//     print “You win!”
//     if userChoice is paper and computerChoice is rock
//     print “You win!”
// if userChoice is paper and computerChoice is Sc
//     print “You lose!”
// if userChoice is Scissors and computerChoice is rock
//     print “You lose!”
//     if userChoice is Scissors and computerChoice is paper
//     print “You win!”

// create userWins function that adds up user wins

// create userLoses function that adds up computerWins

// Print “Score is “userWins” to “computerWins”.  Throw R, P or S play again!”
//Solution

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
        var player = playerGuess();
        resultCompile(player);
        var computer = computerGuess();
        var result = compareGuesses(player, computer);
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

function playerGuess() {
    var playerChoice = prompt("Choose your weapon; Rock, Paper, or Scissors.");
    if (playerChoice === "Rock" || playerChoice === "Paper" || playerChoice === "Scissors") {
        return playerChoice;
    }
    alert("You typed something else or did not spell your choice correctly please try again!");
    playerGuess();
}

function resultCompile(playerGuess){

        history.unshift(playerGuess);

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

function computerGuess() {
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


function compareGuesses(userGuess, compGuess) {

    alert("Player chose: " + userGuess + " and the computer chose: " + compGuess + "!");

    if (userGuess === compGuess) {
        alert("You and the computer guessed the same thing! Go again, no score added!");
        return 0;
    }

    if (
    (userGuess === "Rock" && compGuess === "Scissors") || (userGuess === "Paper" && compGuess === "Rock") || (userGuess === "Scissors" && compGuess === "Paper")) {
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