// Complex data types

import UIKit

// Arrays

// Arrays are collections of values that are stored as a single value. For example, John, Paul, George, and Ringo are names, but arrays let you group them in a single value called The Beatles.

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles [1]

// Sets
let colors = Set(["red", "blue", "green"])
let colors2 = Set(["red", "green", "red", "blue", "blue"])

// Tuples
var name = (first: "Emre", last: "Ulkem")
name.0

// Enumerations (enums): a way of defining groups of related values in a way that makes them easier to use.
let result = "failure"
let result2 = "fail"
let result3 = "failed"

enum Result {
    case success
    case failure
}

let results4 = Result.failure

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Football")

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let aim = Planet(rawValue: 2)
