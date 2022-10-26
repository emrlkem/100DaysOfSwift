import UIKit


    // Creating Your Own Structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Hillside City tennis"


    // Computed Properties

struct Sport1 {
    var name1: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name1) is an Olympic Sport."
        }   else {
            return "\(name1) is not an Olympic sport"
        }
    }
}

let boxing = Sport1(name1: "Boxing", isOlympicSport: true)
print(boxing.olympicStatus)


    // Property Observers

struct Progress1 {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete.")
        }
    }
}

var progress = Progress1(task: "Loading data", amount: 0)
    progress.amount = 30
    progress.amount = 80
    progress.amount = 100


    // Methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let Istanbul = City(population: 9_000_000)
Istanbul.collectTaxes()


    // Mutating Methods

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Emre")
person.makeAnonymous()


    // Properties and Methods of Strings

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


    // Properties and Methods of Arrays

var toys = ["Woody"]
print(toys.count)

toys.append("Buzz")
toys.firstIndex(of: "Buzz")

print(toys.sorted())

toys.remove(at: 0)


    // Initializers

struct User {
    var username: String
    
    init() {
        username = "Emre"
        print("Creating a new user.")
    }
}

var user = User()
user.username = "Emree"


    // Referring to the Current Instance

struct Person1 {
    var name: String
    
    init(name: String) {
        print("\(name) was born.")
        self.name = name
    }
}


    // Static Properties and Methods

struct Student {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")


struct Student1 {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student1.classSize += 1
    }
}

print(Student1.classSize)


    // Access Control

struct Person3 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let sam = Person3(id: "12345")

