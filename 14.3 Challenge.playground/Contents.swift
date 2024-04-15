import UIKit

// Rock, Paper, Scissors 2.0

// Create a function that takes in a string as input. This is the users move (either rock paper or scissors).

// Randomly decide what the computers choice is.

// Return a string of who wins.
enum RockPaperScissors: Int {
    case rock, paper, scissors
}

func rockPaperScissors(playerOne: RockPaperScissors) -> String {
    guard let computerChoice = RockPaperScissors(rawValue: Int.random(in: 0...2)) else {
        return "Couldn't find computer choice"
    }

    switch (playerOne, computerChoice) {
    case (.rock, .scissors), (.scissors, .paper), (.paper, .rock):
        return "Player 1 won!"
    case (.scissors, .rock), (.paper, .scissors), (.rock, .paper):
        return "Computer won!"
    default:
        return "Draw!"
    }
}

print(rockPaperScissors(playerOne: .scissors))

