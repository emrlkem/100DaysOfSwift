import UIKit

// Review 1

    // Variables and Constants

var name = "Emre Ulkem"
name = "Emin"

let name1 = "Alex"


    // Types of Data

var name2: String
name2 = "Timo"

var age: Int
age = 25

var latitude: Double
latitude = 36.1435345

var longitude: Double
longitude = -1231386.8523551323

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false


    // Operators

var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 20
b += 10
b -= 10

var c = 1.1
var d = 2.2
var e = c + d

var name3 = "Sean"
var name4 = "Dean"
var both = name3 + " and " + name4

var t = 22
var r = 23
var y = t + r

y > 5
y >= 45
y > 56
y < 60


    // String Interpolation

var name5 = "Erdem"
"Your name is \(name5)."
"Your name is " + name5

var age5 = 25
var latitude5 = 36.1111533

"Your name is \(name5), your age is \(age5), and your \(latitude5)."


    // Arrays

var evenNumbers = [2, 4, 6, 8]
var songs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 4]

songs[0]
songs[1]
songs[2]
songs[3]

type(of: songs)


    // Dictionaries

var person = [
              "first": "Taylor",
              "middle": "Alison",
              "last": "Swift",
              "month": "December",
              "website": "tayloswift.com"
            ]

person["middle"]
person["month"]


    // Conditional Statements

var action: String
var person1 = "hater"

if person1 == "hater" {
    action = "hate"
}

var action1: String
var person2 = "player"

if person2 == "hater" {
    action = "hate"
} else if person2 == "player" {
    action1 = "play"
} else {
    action1 = "cruise"
}


    // Loops

print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")

for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}


var str = "Fakers gonna"

for _ in 1...5 {
    str += " fake"
}

print(str)


var songs1 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs1 {
    print("My favourite song is \(song)")
}


var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0..<4 {
    print("\(people[i]) gonna \(actions[i])")
}


var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if counter == 38 {
        break
    }
}


var songs2 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song3 in songs2 {
    if song3 == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song3)")
}


    // Switch Case

let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You are just starting out.")
    
case 1:
    print("You just released iTunes live from soho.")
    
case 2:
    print("You just released Speak Now World Tour.")
    
default:
    print("Have you done something new?")
}

