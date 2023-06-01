import UIKit

// A function or method with an opaque return type hides its return value’s type information. 
protocol View {
    
}

func getRandomNumber() -> some Equatable {
    Double.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())


