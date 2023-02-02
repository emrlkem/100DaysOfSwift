import UIKit

    //raw
enum Ingredient: String {
    case chicken = "Male"
    case lettuce = "Romaine lettuce"
    case oil = "Olive"
    case salt = "Himalaya"
}

let ingredient = Ingredient.lettuce

switch ingredient {
    case .chicken:
        print("fdslk")
    case .lettuce:
        print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
    case .oil:
        print("lkfds")
    case .salt:
        print("vldsv")
}


    //associated
enum RecipeInformation {
    case allergens(information: String)
}

let recipeInformation = RecipeInformation.allergens(information: "Milk, gluten, peanut")

switch recipeInformation {
    case .allergens(let information): print("The meal includes the following allergens: \(information).")
    default: print("none")
}
