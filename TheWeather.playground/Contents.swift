import UIKit

let day = "Monday"
let dailyTemperature = 25

print("Today is \(day). Rise and Shine!")
print("The temperature on \(day) is \(dailyTemperature).")

var temperature = 20
print("The temperature of \(day) morning is \(temperature).")

temperature = 10
print("The temperature of \(day) evening is \(temperature).")




let levelScore = 10
var gameScore = 0

gameScore += levelScore
print("The game's score is \(gameScore).")

var levelBonusScore = 10.5
levelBonusScore = 20
print("The level's bonus score is \(levelBonusScore).")

gameScore += Int(levelBonusScore)
print("The game's final score is \(gameScore).")

let levelLowestScore = 50
let levelHighestScore = 99

let levels = 10

let levelScoreDifference = (levelHighestScore) - (levelLowestScore)
let levelAverageScore = Double(levelScoreDifference) / Double(levels)

print("The level's average score is \(levelAverageScore).")




let Day = "Monday"
print("Today is \(Day).")

let hour = "6"
let minute = "15"
let period = "PM"

var time = (hour) + ":" + (minute) + " " + (period)
print("Time is \(time) on \(day).")

let timezone = "PST"
time += " \(timezone)"
print("It is \(time) on \(day).")

let shortDay = day.prefix(3)
print("Today is \(shortDay).")
print("It is \(time) on \(shortDay).")




let freeApp = true
if freeApp == true {
    print("You are using the free version of the app. Buy the full version of the app to get access to all of its features.")
}

let morningTemperature = 70
let eveningTemperature = 80
if morningTemperature < eveningTemperature {
    print("It is colder in the morning.")
} else {
    print("It is colder in the evening.")
}

let temperatureDegree = "Fahrenheit"
    if temperatureDegree == "Fahrenheit" {
    print("The app uses Fahrenheit degrees.")
} else {
    print("The app uses Celsius degrees.")
}

if temperatureDegree == "Fahrenheit" || temperatureDegree == "Celcius" {
    print("The app is configured properly.")
} else {
    print("The app isn’t configured properly.")
}

switch temperatureDegree {
    case "Fahrenheit": print("The app is configured for the US.")
    case "Celcius": print("The app is configured for Europe.")
    default: print("The app has an unknown configuration in this case.")
}
