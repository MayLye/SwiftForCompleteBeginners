import UIKit

// customize the initialization process with input parameters and optional property types, or by assigning constant properties during initialization
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}
let player = Player(name: "Megan R")
print(player.number)
// number displayed below are random
