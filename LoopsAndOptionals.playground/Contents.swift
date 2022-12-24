import UIKit

let levels = 10
let freeLevels = 4
let bonusLevels = 3

for currentLevel in 1...levels {
    
    if currentLevel == bonusLevels {
        print("Skip bonus level \(bonusLevels).")
        continue
    }
    
    print("Play level \(currentLevel).")

    if currentLevel == freeLevels {
        print("You have played all \(freeLevels) free levels. Buy the game to play the remaining \(levels - freeLevels) levels.")
        break
    }
    
}


var password = "1234"
let passcode = Int(password)
print("The passcode of the app is \(passcode!).")

password = "Hello World."
if let code = Int(password) {
    print("Passcode is \(code).")
} else {
    print("Invalid.")
}

let accessCode: Int
if let code = Int(password) {
    accessCode = code
} else {
    accessCode = 1111
}
print("Passcode is \(accessCode).")



let firstPassword = "hello"
let secondPassword = "world"
if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    print("first passcode is \(firstPasscode), second passcode is \(secondPasscode).")
} else {
    print("Invalid passcodes.")
}


let firstAccessCode: Int
let secondAccessCode: Int
if let firstPasscode = Int(firstPassword),
  let secondPasscode =
    Int(secondPassword)
{
  firstAccessCode = firstPasscode
  secondAccessCode = secondPasscode
} else {
  firstAccessCode = 1111
  secondAccessCode = 2222
}
print(
  "The first passcode of the app is \(firstAccessCode) and the second passcode of the app is \(secondAccessCode)."
)
