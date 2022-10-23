import UIKit

    // Using Closures as Parameters When They Accept Parameters

func travel(action: (String) -> Void) {
    print("I am getting ready to go.")
    action("Istanbul")
    print("I arrived.")
}

travel { (place: String) in
    print("I am going to \(place) in my car.")
}


    // Using Closures as Parameters When They Return Values

func travelFirst(action: (String) -> String) {
    print("I am getting ready to go.")
    let description = action("Istanbul")
    print(description)
    print("I arrived.")
}

travelFirst { (place: String) -> String in
        return "I am going to \(place) in my car."
}


    // Shorthand Parameter Names

func travelSecond(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Istanbul")
    print(description)
    print("I arrived!")
}

travelSecond { place -> String in
    return "I'm going to \(place) in my car."
}

travelSecond { place in
    return "I am going to \(place) in my car."
}
    
travelSecond { place in
    "I am going to \(place) in my car."
}


    // Closures With Multiple Parameters

func travelThird(action: (String, Int) -> String) {
    print("I am getting ready to go.")
    let description = action("Istanbul", 70)
    print(description)
    print("I arrived.")
}

travelThird { place, place1 in
    return "I'm going to \(place) at \(place1) miles per hour."
}


    // Returning closures from functions

func travelFourth() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travelFourth()
result("Istanbul")


    // Capturing values

func travelFifth() -> (String) -> Void {
    return {
        print("I am going to \($0)")
    }
}

let result1 = travelFifth()
result1("Istanbul")
