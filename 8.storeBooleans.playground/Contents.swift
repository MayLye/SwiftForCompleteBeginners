import UIKit

// A Boolean is a value type whose instances are either true or false
let goodDogs = true
var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)
