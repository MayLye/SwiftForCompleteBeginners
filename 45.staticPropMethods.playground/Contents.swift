import UIKit

// Swift lets you create properties and methods that belong to a type, rather than to instances of a type.
struct School {
    static var studentCount = 0
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.example.com"
}

struct Employee {
    let username: String
    let password: String
    static let example = Employee(username: "cecdcecd", password: "Abc%678")
}
