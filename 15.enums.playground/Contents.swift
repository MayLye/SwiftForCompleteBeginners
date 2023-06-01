import UIKit

// enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday"

enum Weekday {
    case monday, tuesday, wednesday, thrusday, friday
}

var day = Weekday.monday
day = .tuesday
