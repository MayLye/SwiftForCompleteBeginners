import UIKit

// A for loop is used in Swift to repeat code or to iterate over collections
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

// os here is loop variable
for os in platforms {
    // loop body
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("The \(i) times table")
    
    for j in 1...12 {
        print("  \(j) x \(i) is \(j*i)")
    }
    print()
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")
}

var lyrics = "Haters gonna"

for _ in 1...5 {
    lyrics += " hate"
}
print(lyrics)
