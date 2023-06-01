import UIKit
import Foundation
import os

// 01. constant and variables, but constants are preferred.
var name = "Ted"
name = "Rebecca"

let user = "Daphne"
print(user)

// 02. string, starts and ends with ".
// to add emoji, press CTRL + CMD + SPACE.
let actor = "Tom Cruise 🐹"
print(actor.count)

let quote = "He tapped a sign saying \"Believe\" and walked away."
print(quote.hasPrefix("He"))

let movie = """
A day in
the life of an
Apple engineer
"""

// 03. swift store whole numbers using Int.
let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1000)

// 04. double
let scoreA = 3.0

// 05. Boolean
let goodDogs = true
let gameOver = false
var isSaved = false
isSaved.toggle()

// 06. string innterpolation
let nameA = "Taylor"
let age = 26
let message = "I'm \(nameA) and I'm \(age) years old."
print(message)

// 07. array
var colors = ["Red", "Green", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]

print(colors[0])
print(readings[2])
// use append to add items to the array
colors.append("Tartan")
colors.remove(at: 0)
print(colors.count)
// print(colors.contains("Octarine")) -> false

// 08. dictionaries store multiple values use key we specify.
let employee = [
    "name": "Taylor",
    "job": "Singer"
]
print(employee["job", default: "Unknown"])

// 09. sets are similar to array excepts they can't add duplicate items and they can't store things in order.
var numbersA = Set([1,1,3,5,7,9])
print(numbersA)
numbersA.insert(10)
// sets will run instantly
numbersA.contains(11)

// 10. enum is a set of named values we can use that makes the code safer and more efficient.
enum Weekday {
    case monday, tuesday, wednesday, thrusday, friday
}
var day = Weekday.monday
day = .friday

// 11. type annotation
var scoreB: Double = 0
let player: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])
var teams: [String] = [String]()
var clues = [String]()

// var albums: Array<String> = ["Red", "Fearless"]
var albums: [String] = ["Red", "Fearless"]

// var user: Dictionary<String, String> = ["id":"@twostraws"]
var userA: [String: String] = ["id":"@twostraws"]

enum UIStyle {
    case light, dark, system
}
var style: UIStyle = .light

// 12. if else if
let ageA = 16
if ageA < 12 {
    print("You can't vote.")
} else if ageA < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}

let temp = 26
if temp > 20 || temp < 30 {
    print("It's a nice day.")
}

// 13. switch
enum Weather {
    case sun, rain, wind
}
let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella.")
default:
    print("Should be okay.")
}

// 14. ternary condition operator
let ageB = 18
let canVote = ageB >= 18 ? "Yes" : "No"
print(canVote)

// 15. for loop
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)")
}
for i in 1..<12 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}
print(lyric)

var count = 10
while count > 0 {
    print("\(count)...")
    count -= 1
}
print("Go!")

let files = ["me.jpg", "work.txt", "sophie.jpg"]
for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    print("Found pictures: \(file)")
}

// 16. functions{parameters}
func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(number: 8)

func rollDice() -> Int {
    Int.random(in: 1...6)
}
let result = rollDice()
print(result)

// 17. tuples store fixed numbers of items of specific types, convenient for returning multiple values from a function.
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let userB = getUser()
print("Name: \(userB.firstName) \(userB.lastName)")

let (firstName, _) = getUser()
print("Name: \(userB.firstName)")

// 18. if you don't want to pass username into a function, put underscore.
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO WORLD"
let resultA = isUppercase(string)

func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 5)

// 19. provide default values for parameters by writing equals after their type name, then give the value.
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)")
    } else {
        print("Hi, \(person)")
    }
}
greet("Tim", formal: true)
greet("Taylor")

// 20. handle errors
enum PasswordError: Error {
    case short, obvious
}
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}
// try catch error
do {
    let result = try checkPassword("12345")
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// 21. assign functionality
let sayHello = { (name: String) -> String in
    "Hi, \(name)!"
}
let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]
/*
let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})   -> multiline fit into singleline.
 */
// $0 represents the first parameter passed to swift closure.
let onlyT = team.filter { $0.hasPrefix("T")}
print(onlyT)

// 22. structs let us make our own custom data types complete with own properties and methods.
struct Album {
    let title: String
    let artist: String
    var isReleased = true
    
    func printSummary() {
        print("\(title) by \(artist)")
    }
    // When you want to change a property inside a method, you need to mark it using the mutating keyword.
    mutating func removeFromSale() {
        isReleased = false
    }
}
let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()

// 23. computed property calculates its value everytime it's accessed.
struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0
    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken
        }
        set {
            // newValue -> contains what the new property value is going to be.
            vacationAllowed = vacationTaken + newValue
        }
        
    }
}

// 24. Property Observers are pieces of code that runs when a property changes. It observe and respond to changes in a property's value.
struct Game {
    var score = 0 {
        // didSet to execute code when a property has just been set.
        // willSet to execute code before a property has been set.
        didSet {
            print("Score is now \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score -= 3

// 25. Initializers are special functions that run when a new instance of a struct is created it must make sure that all properties inside the struct have a value by the time it finishes.
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

// 26. Access Control types - Private, Private Set, Fileprivate, Public.
struct BankAccount {
    // private(set) you can read but cannot write.
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

let account = BankAccount(funds: 100)
print(account.funds)
// account.funds += 1000 (error due to private set)

// 27. Static Properties and Methods - allows us to add them directly to a struct type rather than to a particular instance of a struct.
// A static method is of class type, so we are able to access them using class names.
struct AppData {
    static let version = "1.3 beta2"
    static let settingsFile = "settings.json"
}
print(AppData.version)

// 28. Classes let us create custom data types like structs but they are different in 5 ways:
//  (i) inherit and build upon
class EmployeeA { // parent class
    let hours: Int
    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: EmployeeA { // child class
    func work() {
        print("I'm coding for \(hours) hours a day.")
    }
    
    override func printSummary() { // for child to override parent
        print("I spend \(hours) hours a day fighting over tabs vs spaces.")
    }
}

let novall = Developer(hours: 8)
novall.work()
novall.printSummary()

//  (ii) Swift will never make a generated initializer for our classes.
//  (iii) If a subclass has no custom initializers it'll automatically inherit all those from its parent.
class Vehicle {
    let isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        // use super to call parent class
        super.init(isElectric: isElectric)
    }
}

//  (iv) All copies of a class share one particular set of data; meaning if you change one instance, all copies of that instance also updated.
class Actor {
    var name = "Nicholas Cage"
}
var actor1 = Actor()
var actor2 = actor1
actor2.name = "Tom Cruise"
print(actor1.name)
print(actor2.name)

struct ActorS {
    var name = "Nicholas Cage"
}
var actor1S = ActorS()
var actor2S = actor1S
actor2S.name = "Tom Cruise"
print(actor1S.name)
print(actor2S.name)

//  (v) Classes can have a deinitializer if they need to when the last reference of an object is destroyed.
class Site {
    let id: Int
    init(id: Int) {
        self.id = id
        print("Site \(id): I've been created.")
    }
    deinit {
        print("Site \(id): I've been destroyed!")
    }
}

for i in 1...3 {
    let site = Site(id: i)
    print("Site \(site.id): I'm in control!")
}

class Singer {
    var name = "Adele"
}
let singer = Singer()
singer.name = "Justin"
print(singer.name)

// 29. Protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
protocol VehicleA {
    // protocol's properties
    var name: String { get }
    var currentPassengers: Int { get set }
    // protocol's properties
    
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct CarA: VehicleA {
    // all conforming type must add it's properties too.
    let name = "CarA"
    var currentPassengers = 1
    // all conforming type must add it's properties too.
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicleA: VehicleA) {
    if vehicleA.estimateTime(for: distance) > 100 {
        print("Too slow!")
    } else {
        vehicleA.travel(distance: distance)
    }
}

let carA = CarA()
commute(distance: 100, using: carA)

// 30. Extensions lets us add new functionality to any kind of type.
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func trim() {
        self = self.trimmed()
    }
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quoteA = "   The truth is rarely pure and never simple   "
quoteA.trim()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
"""
print(lyrics.lines.count)

// 31. Protocol extensions -> let us add computed properties and method to a whole protocol, so that any type conforming to the protocol get access to them.
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}
let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

// 32. Optionals represent the absence of data. Either zero value or nothing at all.
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]
let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

// 33. Guard let -> another way of unwrapping optionals
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}

// 34. Nil-coalescing Operator (??) -> unwraps an optional and returns the value inside if there is one.
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"
let input = ""
let numberA = Int(input) ?? 0
print(numberA)

// 35. Optional Chaining reads optionals inside optionals.
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased()
print("Next in line:\(chosen ?? "No one")")

// 36. Optional Try?
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
