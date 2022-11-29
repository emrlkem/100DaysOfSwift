import UIKit

// Review 4

    // Protocols

protocol Employee {
    var name: String { get set }
    var jobTitle: String { get set }
    
    func doWork()
}

struct Executive: Employee {
    var name = "Steve Jobs"
    var jobTitle = "CEO"
    
    func doWork() {
        print("I am strategizing.")
    }
}

struct Manager: Employee {
    var name = "Emre Ülkem"
    var jobTitle = "Nothing"
    
    func doWork() {
        print("Nothing else matters.")
    }
}

let staff: [any Employee] = [Executive(), Manager()]

for person in staff {
    person.doWork()
}


    // Extensions

var myInt = 0

extension Int {
    mutating func plusOne() {
        self += 1
    }
}

myInt.plusOne()

var myInt1 = 10
myInt1.plusOne()
myInt1


    
    // Protocol Extensions

protocol Worker {
    var name: String { get set }
    var jobTitle: String { get set }
    func doWork()
}

extension Worker {
    func doWork() {
        print("I am busy.")
    }
}

struct OfficeDrone: Worker {
    var name: String = "Dwigt"
    var jobTitle: String = "Assistant (to the) regional manager."
}

let drone = OfficeDrone()
drone.doWork()
