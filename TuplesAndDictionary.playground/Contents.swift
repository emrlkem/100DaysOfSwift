import UIKit


let credentials = ("", -1111)

if credentials.0 == "" || credentials.1 < 0 {
    print("Invalid credentials!")
} else {
    print("The username is \(credentials.0) and the passcode is \(credentials.1).")
}

let fullCredentials = ("pass", 1111)

if fullCredentials.0 == "" || fullCredentials.1 < 0 {
    print("Invalid credentials!")
} else {
    print("The username is \(fullCredentials.0) and the passcode is \(fullCredentials.1).")
}



var weeklyTemperatures: Dictionary<String, Int> = [:]
weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]

weeklyTemperatures["Monday"]! += 20
print("The temperature on Monday is \(weeklyTemperatures["Monday"]!)F.")

if let temperature = weeklyTemperatures["Sunday"] {
    print("The temperature on Sunday is \(temperature)°F.")
} else {
    weeklyTemperatures["Sunday"] = 100
    print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)°F.")
}

if weeklyTemperatures.count == 7 {
  print("You have access to the weather forecast of the whole week.")
  weeklyTemperatures = [:]
  print("Reset weekly temperatures for next week!")
}

