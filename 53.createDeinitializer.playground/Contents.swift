import UIKit

// A deinitializer is called immediately before a class instance is deallocated.
class User {
    let id: Int
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}
print("Loops is finished!")
users.removeAll()
print("Array is clear!")
