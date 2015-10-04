var playerScore = 0;
var computerScore = 0;
var history = [];
history[1]= undefined;
history[2]= undefined;

function welcomeMessage() {
    alert("I am a master of Jan Ken Po.  You may know it as Rock, Paper, Scissors.  Prepare for battle!");
}

function playGame(numOfRounds) {
    welcomeMessage();
    do {
        var player = playerGuess();
        resultCompile(player);
        var computer = computerGuess();
        var result = compareGuesses(player, computer);
        updateScores(result, 1);
        if (result !== 0) {
            numOfRounds--;
        }
    } while (numOfRounds > 0);

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
    if (history[1] == "Rock" && history[2] == "Rock"){ return "Scissors";}
    else if (history[1] == "Paper" && history[2] == "Paper"){return "Rock";}
    else if (history[1] == "Scissors" && history[2] == "Scissors") {return "Paper";}
    else if (history[1] == "Rock" && 1) {return "Paper";}
    else if (history[1] == "Paper" && 1){  return "Scissors";}
    else if (history[1] == "Scissors" && 1) {return "Rock";}
    else if (history[1] == "Rock" && 2){return "Scissors";}
    else if (history[1] == "Scissors" && 2) {return "Paper";}
    else if (history[1] == "Paper" && 2) { return "Rock";}
    else  return randChoice();
}


function compareGuesses(userGuess, compGuess) {
    //Create an alert message detailing the results
    alert("Player chose: " + userGuess + " and the computer chose: " + compGuess + "!");
    //First check for equality
    if (userGuess === compGuess) {
        alert("You and the computer guessed the same thing! Go again, no score added!");
        return 0;
    }
    //No check for guess1 winning
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


playGame(3);