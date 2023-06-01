import UIKit
import Foundation

var name = "Ted"
name = "Rebecca"

let user = "Daphne"
print(user)

// to add emoji, CTRL + CMD + Space
let actor = "Tom Cruise 😘"
print(actor.count)

let quote = "He tapped a sign saying \"Believe\" and walked away."
print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away."))

let movie = """
A day in
the life of an
 apple engineer
"""

let score = 10
let higherScore = score + 10
let halvedScore = score / 2
var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1000)

let goodDogs = true
let gameOver = false
var isSaved = false
isSaved.toggle()

let name2 = "Taylor"
let age = 26
let message = "I'm \(name2) and I'm \(age) years old."
print(message)

var colors = ["Red", "Green", "Blue"]
print(colors[0])
colors.append("Tartan")
colors.remove(at: 0)
print(colors.count)
print(colors.contains("Octarine"))

let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]
print(readings[2])

// dictionary
let employee = [
    "name": "Taylor",
    "job": "Singer"
]
print(employee["job", default: "Unknown"])

// sets
var numbersA = Set([1,1,3,5,7,9])
print(numbersA)
numbersA.insert(10)
numbersA.contains(11)

// enum
enum Weekday {
    case monday, tuesday, wednesday, thrusday, friday
}
var day = Weekday.monday
day = .friday

// type annotation
var scoreA: Double = 0
let player: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true

var albums: [String] = ["Red", "Fearless"]
var userA: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

var teams: [String] = [String]()
var clues = [String]()

enum UIStyle {
    case light, dark, system
}
var style: UIStyle = .light

// if else
let ageA = 16
if ageA < 12 {
    print("You can't vote.")
} else if age < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}

let temp = 26
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// switch
enum Weather {
    case sun, rain, wind
}
let forecast = Weather.sun
switch forecast {
    case .sun:
        print("A nice day.")
    case .rain:
        print("Pack an umbrella")
    default:
        print("Should be okay.")
}

// ternary operation
let ageB = 18
let canVote = ageB >= 18 ? "Yes" : "No"

// for loops
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

// while loop
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
    print("Found picture: \(file)")
}

// function parameter
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

// tuples
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let (firstName, _) = getUser()
print("Name: \(firstName)")

//
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO WORLD"
let resultA = isUppercase(string)

func printTimesTableA(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTableA(for: 5)

//
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)")
    } else {
        print("Hi, \(person)")
    }
}
greet("Tim", formal: true)
greet("Taylor")

// handling erros
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

do {
    let result = try checkPassword("12345")
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage.")
} catch {
    print("There was an error.")
}

// assign function and variable
let sayHello = {(name: String) -> String in
    "Hi, \(name)!"
}
let team = ["Gloria","Suzanne","Tiffany","Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})
print(onlyT)

// closures
let team2 = ["Gloria","Suzanne","Tiffany","Tasha"]
let onlyT2 = team2.filter{ $0.hasPrefix("T") }
print(onlyT2)

// struct
struct Album {
    let title: String
    let artist: String
    var isReleased = true
    
    func printSummary() {
        print("\(title) by \(artist)")
    }
    mutating func removedFromSale() {
        isReleased = false
    }
}
let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()

// computed property
struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0
    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken
        }
        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
}

// properties observer
struct Game {
    var score = 0
}
var game = Game()
game.score += 10
game.score -= 3

// initializers
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...9)
    }
}

// access control in struct
struct BankAccount {
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

// static property and methods
struct AppData {
    static let version = "1.3 beta 2"
    static let settingsFile = "settings.json"
}
print(AppData.version)

// classes: let us create custom data type like struct
class EmployeeA {
    let hours: Int
    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: EmployeeA {
    func work() {
        print("I'm coding for \(hours) hours a day.")
    }
    override func printSummary() {
        print("I spend \(hours) hours a day fighting over tabs vs spaces.")
    }
}

let novall = Developer(hours: 8)
novall.work()
novall.printSummary()

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
        super.init(isElectric: isElectric)
    }
}

class Actor {
    var name = "Nicolas Cage"
}
var actor1 = Actor()
var actor2 = actor1
actor2.name = "Tom Cruise"
print(actor1.name)
print(actor2.name)


struct ActorA {  // structs never shares data as in classes.
    var name = "Nicolas Cage"
}
var actor3 = ActorA()
var actor4 = actor3
actor4.name = "Tom Cruise"
print(actor3.name)
print(actor4.name)

class Site {
    let id: Int
    init(id: Int) {
        self.id = id
        print("Site \(id): I've been created.")
    }
    deinit {
        print("Site \(id): I've been destroyed.")
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

// protocols
protocol VehicleA {
    var name: String { get }
    var currentPassengers: Int { get set }
    
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct CarA: VehicleA {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
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

// extensions
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

// protocol extensions
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}
let guests = ["Mario","Luigi","Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

// optionals: represents the absence of data
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

// guard let: to unwrap optionals
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}

// nil coalesing operator to unwrap optionals
let tvShows = ["Archer","Babylon 5","Ted Lasso"]
let favourite = tvShows.randomElement() ?? "None"

let input = " "
let numberA = Int(input) ?? 0
print(numberA)

// optionals chaining: optionals inside optionals
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one")")

// handling erros
enum UserError: Error {
    case badID, networkFailed
}
func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User \(user)")
}
