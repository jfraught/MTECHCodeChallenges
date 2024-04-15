import UIKit

// Rock, Paper, Scissors

// Create a function that takes in two strings. The strings will be either "rock", "paper", or "scissors"

// Determine who wins and return a string saying who won

// Examples(Input1, Input2 --> Output):

// "scissors", "paper" --> "Player 1 won!"
// "scissors", "rock" --> "Player 2 won!"
// "paper", "paper" --> "Draw!"

func rockPaperScissors(playerOne: String, playerTwo: String) -> String {
    switch (playerOne, playerTwo) {
    case ("rock", "scissors"), ("scissors", "paper"), ("paper", "rock"):
        return "Player 1 won!"
    case ("scissors", "rock"), ("paper", "scissors"), ("rock", "paper"):
        return "Player 2 won!"
    default:
        return "Draw!"
    }
}

print(rockPaperScissors(playerOne: "scissors", playerTwo: "paper"))
print(rockPaperScissors(playerOne: "scissors", playerTwo: "rock"))
print(rockPaperScissors(playerOne: "paper", playerTwo: "paper"))
