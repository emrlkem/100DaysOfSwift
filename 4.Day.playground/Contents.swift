import UIKit

    // Loops

let count = 1...10
for number in count {
    print("Number is \(number).")
}

let albums = ["red", "1999", "swift"]
for album in albums {
    print("\(album) is on Apple Music.")
}

print("Player gonna ")
for _ in 1...5 {
    print("play.")
}

    // While Loops

var number1 = 1

while number1 <= 20 {
    print("number1")
    number1 += 1
}

    // Repeat Loops
var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

    // Exiting Loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

    // Exiting Multiple Loops

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

    // Skipping items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

    // Infinite loops

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
