import UIKit


    // Creating Your Own Classes

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")


    // Class Inheritance

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}


    // Overriding Methods

class Dog1 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle1: Dog1 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy1 = Poodle1()
poppy1.makeNoise()


    // Final Classes

final class Dog2 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


    // Copying Objects

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)


    // Deinitializers

class Person {
    var name = "John Wayne"
    
    init() {
        print("\(name) is alive.")
    }
    
    func printGreeting() {
        print("Hello, I am \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

