import UIKit

// Arithmetic Operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 17 % secondScore

// Operator Overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Emre"]
let secondHalf = ["Deniz", "Taylor"]
let team = firstHalf + secondHalf

// Compound Assignment Operators
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards."

// Comparison Operators
let firstNumber = 6
let secondNumber = 3
firstNumber == secondNumber
firstNumber != secondNumber
firstNumber < secondNumber
firstNumber >= secondNumber

"Deniz" <= "Emre"

// Conditions
let firstCard = 21
let secondCard = 4

if firstCard + secondCard == 22 {
    print("Bingo!")
} else {
    print("Try again.")
}

if firstCard + secondCard == 20 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 30 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// Combining Conditions: && (pronounced “and”) and || (pronounced “or”)
let age1 = 25
let age2 = 42

if age1 > 30 && age2 > 30 {
    print("Both are over 30.")
} else {
    print("are not.")
}

if age1 > 30 || age2 > 30 {
    print("At least one is over 30.")
}

// Swift Statements
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella.")
case "snow":
    print("Wrap up warm.")
case "sunny":
    print("Wear sunscreen.")
default:
    print("Enjoy your day.")
}

// Range Operators
let exam = 85
switch exam {
case 0..<50:
    print("You failed badly.")
case 50...85:
    print("You did OK.")
default:
    print("You did great.")
}

