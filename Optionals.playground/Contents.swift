import UIKit


var password = "1234"
let passcode = Int(password)
print("The passcode of the app is \(passcode!).")


password = "hello world"
if let code = Int(password) {
    print("the passcode is valid.")
} else {
    print("invalid.")
}


let accessCode: Int
if let code = Int(password) {
    accessCode = code
} else {
    accessCode = 1111
}
print("The passcode of the app is \(accessCode).")


let firstPassword = "hello"
let secondPassword = "world"
if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    print( "The first passcode of the app is \(firstPasscode) and the second passcode of the app is \(secondPasscode).")
} else {
    print("invaliddd.")
}


let firstAccessCode: Int
let secondAccessCode: Int
if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    firstAccessCode = firstPasscode
    secondAccessCode = secondPasscode
} else {
    firstAccessCode = 111
    secondAccessCode = 222
}
print(
  "The first passcode of the app is \(firstAccessCode) and the second passcode of the app is \(secondAccessCode)."
)
