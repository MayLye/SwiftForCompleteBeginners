import UIKit

// an initializer is a special init() function that we use to create objects of a particular class, struct or type.
class Vehicle {
    let isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible = false
    /*
    let isConvertible: Bool
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
     */
}

// let teslaX = Car(isElectric: true, isConvertible: false)
let teslaX = Car(isElectric: true)
