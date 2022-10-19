import UIKit

    // Creating Basic Closures

let driving = {
    print("I am driving in my car.")
}

driving()


    // Accepting Parameters in a Closure

let driving1 = { (place: String) in
    print("I am going to \(place) in my car.")
}

driving1("istanbul")


    // Returning Values From a Closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("istanbul")
print(message)


    // Closures as Parameters

let driving2 = {
    print("I am driving in my car.")
}

func travel(action: () -> Void) {
    print("I am getting ready to go.")
    action()
    print("I arrived.")
}

travel(action: driving2)


    // Trailing Closure Syntax

func travel1(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel1 {
    print("I am driving in my car.")
}


    // Using Closures as Parameters When They Accept Parameters

func travel2(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("istanbul")
    print("I arrived!")
}

travel2 { (place: String) in
    print("I am going to \(place) in my car.")
}


    // Using Closures as Parameters When They Return Values

func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("istanbul")
    print(description)
    print("I arrived!")
}

travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car."
}

travel3 { place in
    return "I'm going to \(place) in my car"
}

travel3 { place in
    "I'm going to \(place) in my car"
}

travel3 {
    "I'm going to \($0) in my car"
}

    // Closures With Multiple Parameters

func travel4(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("istanbul", 80)
    print(description)
    print("I arrived!")
}

travel4 {
    "I am going to \($0) at \($1) miles per hour."
}


    // Returning Closures From Functions

func travel5() -> (String) -> Void {
    return {
        print("I am going to \($0)")
    }
}

let result = travel5()
result("istanbul")

let result1: Void = travel5()("london")


        // Capturing Values

func travel6() -> (String) -> Void {
    return {
        print("I am going to \($0)")
    }
}

let result2 = travel6()
result2("istanbul")


func travel7() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I am going to \($0)")
        counter += 1
    }
}

result("istanbul")
result("istanbul")
result("istanbul")
