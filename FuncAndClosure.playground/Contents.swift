import UIKit


func showPhi() {
 print("The value of phi is ((√5 + 1) ÷ 2).")
}

showPhi()


func double(passedValue: Int) {
  let result = passedValue * 2
  print("Double \(passedValue) is \(result).")
}

double(passedValue: 10)


func multiply(firstValue: Int, secondValue: Int) -> Int {
  let result = firstValue * secondValue
  return result
}

let result = multiply(firstValue: 10, secondValue: 3)



func display(_ s1: String, _ s2: String, score: Int = 0) {
  let name_score = s1 + " " + s2 + " " + String(score)
  print("Hello \(name_score)")
}

display("Emre", "Ulkem")
display("Emre", "Ulkem", score: 1000)


// Using Function

var goldBars = 0
func unlockTreasureChest(inventory: Int) -> Int {
    return inventory + 100
}

goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)



var goldBars1 = 0
func incrementInventory1(_ inventory1: inout Int, by amount: Int = 100) {
   inventory1 = inventory1 + amount
}

incrementInventory1(&goldBars1)
print(goldBars1)
incrementInventory1(&goldBars1)
print(goldBars1)
incrementInventory1(&goldBars1)
print(goldBars1)
incrementInventory1(&goldBars1, by: 300)
print(goldBars1)
incrementInventory1(&goldBars1, by: 50)
print(goldBars1)


// Using Closures

var goldBars2 = 0
let unlockTreasureChest = { (inventory2: inout Int) in
    inventory2 +=  100
}

unlockTreasureChest(&goldBars2)
print(goldBars2)


// Use functions to modularize a program

var goldBars3 = 100
func spendTenGoldBars(from inventory3: inout Int, completion: (Int) -> Void) {
    inventory3 -= 10
    completion(inventory3)
}
print("You had \(goldBars3) gold bars.")

spendTenGoldBars(from: &goldBars3) { goldBars3 in
    print("You spent ten gold bars.")
    print("You have \(goldBars3) gold bars.")
}
