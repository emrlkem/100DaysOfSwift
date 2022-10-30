import UIKit
//Optionals


    // Handling Missing Data

var age: Int? = nil
age = 25


    // Unwrapping Optionals

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters.")
} else {
    print("Missing name.")
}


    // Unwrapping With Guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You did not provide a name.")
        return
    }
    
    print("Hello, \(unwrapped).")
}


    // Force Unwrapping

let str = "5"
let num = Int(str)

let num1 = Int(str)!

  
    // Implicitly Unwrapped Optionals

let age1: Int! = nil


    // Nil Coalescing

func username(for id: Int) -> String? {
    if id == 25 {
        return "Emre Ulkem"
    } else {
        return nil
    }
}

let user = username(for: 27) ?? "Anonymous"


    // Optional Chaining

let names = ["John", "Paul", "George", "Ringo"]

let beatle = names.first?.uppercased()


    // Optional Try

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
    try checkPassword("Password")
    print("That password is good.")
} catch {
    print("You cannot use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit123")
print("OK.")


    // Failable Inıtializers

let str1 = "20"
let pek = Int(str1)

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}


    // Typecasting

class Animal { }

class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof.")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
