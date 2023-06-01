import UIKit

// Arrays in Swift are collections of data, but these can be sorted with both sort() and sorted() instance methods.
var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Adrian")
beatles.append("Allen")
let numbers = [4,8,16,24]
let temperatures = [-20.0, -10.4, 13, 18, 30]
let firstBeatle = beatles[0]
let firstNumber = numbers[0]

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(60)
print(scores[1])

var albums = ["Folklore"]
albums.append("Fearless")
albums.append("Red")
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)
characters.removeAll()
print(characters.count)

let bondMovies = ["Casinno Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

// for strings, it will be alphabetical
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reveredPresidents = presidents.reversed()
print(reveredPresidents)
