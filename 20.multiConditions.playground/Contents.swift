import UIKit

// use && or ||
let temp = 25
if temp > 20 && temp < 30 {
    print("It's a nnice day.")
}

let age = 16
let userAge = 14
let hasParentalConsent = true
if age >= 18 || hasParentalConsent {
    print("You can buy the game.")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}
let transport = TransportOption.airplane
if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}
