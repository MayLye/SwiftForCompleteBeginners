import UIKit

class Animals {
    let legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animals {
    func speak() {
        print("Dog with \(legs) barks")
    }
}

class Cat: Animals {
    let isTame: Bool
    let legs: Int
    init(legs: Int, isTame: Bool) {
        self.legs = legs
        self.isTame = isTame
        super.init(legs: Int, isTame: Bool)
    }
    func speak2() {
        print("Cat with \(isTame) meows")
    }
}

let Labrador = Dog(legs: 4)
let Poodle = Dog(legs: 4)
Labrador.speak()
Poodle.speak()

let Persian = Cat(isTame: true)
