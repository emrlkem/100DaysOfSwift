import UIKit


    // Writing Functions

func printHelp() {
    let message = """
Welcome to my App.

There are various options to have fun.
"""
    print(message)
}

printHelp()


    // Accepting Parameters //

func square(number: Int) {
    print(number * number)
}

square(number: 5)


func albumRelease(name: String, year: Int) {
    print("\(name) was released in \(year).")
}

albumRelease(name: "Fearless", year: 1999)


func albumIsTaylors(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true}
    return false
}

if albumIsTaylors(name: "Taylor Swift") {
    print("That's one of hers.")
} else {
    print("Who made that?")
}

if albumIsTaylors(name: "The White") {
    print("That's one of hers")
} else {
    print("Who made that?")
}


    // Returning Values //

func square1(number: Int) -> Int {
    return number * number
}

let result = square1(number: 8)
print(result)

   
    // Parameter Labels //

func sayHello(to name: String) {
    print("Hello \(name)")
}

sayHello(to: "Emre")


    // Default Parameters

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello \(person).")
    } else {
        print("Oh no, it is \(person) again.")
    }
}

greet("Emre")
greet("Emre", nicely: false)


    // Variadic Functions

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)


    // Throwing Functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


    // inout parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
