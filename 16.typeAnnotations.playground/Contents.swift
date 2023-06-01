import UIKit

// A type annotation explicitly specifies the type of a variable or expression.
let surname: String = "Lasso"
var score: Double = 0

let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true
var albums: [String] = ["Red", "fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.light
style = .dark

let username: String
username = "@twostraws"
print(username)

