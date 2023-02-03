import UIKit

let reservationsInPerson: Set<String> = ["000-345-3441", "000-345-3442"]
let reservationsOverPhone: Set<String> = ["010-345-3441", "200-345-3442"]
let reservationsOverInternet: Set<String> = ["100-345-3441", "300-345-3442"]

let inPersonAndOverPhone = reservationsInPerson.union(reservationsOverPhone)
print(inPersonAndOverPhone.count)

var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
print(allPhoneNumbers)
print(allPhoneNumbers.count)

var confirmationCodes: Set<String> = ["LL3450","LL3451", "LL3452","LL3453"]
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")
confirmationCodes.insert("LL4444")
print(confirmationCodes)
allPhoneNumbers.remove("000-345-3441")
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")
