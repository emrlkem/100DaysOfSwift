import UIKit

// Review 3

    // Properties

struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I am changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to (clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var emre = Person(clothes: "T-shirts")
emre.clothes = "short skirts"


struct Person1 {
    var age: Int
    
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person1(age: 25)
print(fan.ageInDogYears)


    // Static Properties and Methods

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"
    
 //   var name1 = String
 //   var age1 = Int
}

// let fan = TaylorFan(name1: "James", age1: 25)
print(TaylorFan.favoriteSong)


    // Polymorphism

class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
            return "The album \(name) sold lots."
        }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
            return "The studio album \(name) sold lots."
        }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
           return "The live album \(name) sold lots."
       }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castle Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}


    // Typecasting

// as!

// as?


    // Closures

let vw = UIView()
UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})

let message = "Button pressed"

Button("Press Me", action: {
    print(message)
})





