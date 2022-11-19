import UIKit

// Review 2

    // Functions

func favouriteAlbum() {
    print("My favourite is Fearless.")
}

favouriteAlbum()


func favouriteFood(name: String) {
    print("My favourite is \(name).")
}

favouriteFood(name: "Pommes")


func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)


func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}

countLetters(in: "Hello")


func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" {return true }
    
    return false
}

if albumIsTaylor(name: "Red") {
    print("That's one of hers.")
} else {
    print("Who made that?")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers.")
} else {
    print("Who made that?")
}


    // Optionals

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus(weather: "sunny")
getHaterStatus(weather: "stormy")

var status: String?
status = getHaterStatus(weather: "rainy")
//or
var status1 = getHaterStatus(weather: "rainy")


func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

yearAlbumReleased(name: "Lantern")


    // Optional Chaining ??




    // Enumerations

enum WeatherType {
    case sun, cloud, rain, wind, snow
}

func getLikerStatus(weather: WeatherType) -> String? {
    if weather == WeatherType.sun {
        return nil
    } else {
        return "Like"
    }
}

getLikerStatus(weather: WeatherType.cloud)


enum WeatherType1 {
    case sun1
    case cloud1
    case rain1
    case wind1
    case snow1
}

func getLikerStatu1(weather1: WeatherType1) -> String? {
    if weather1 == .sun1 {
        return nil
    } else {
        return "Like1"
        }
}

    getLikerStatu1(weather1: .cloud1)


enum WeatherType2 {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus(weather: WeatherType2) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType2.wind(speed: 5))


    // Structs

struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let Taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

print(Taylor.clothes)
print(other.shoes)

other.describe()


    // Classes

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("La la la la.")
    }
}

var emre = Singer(name: "Emre", age: 25)
emre.name
emre.age
emre.sing()



