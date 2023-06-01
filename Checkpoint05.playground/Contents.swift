import UIKit

let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]
let even = luckyNumbers
    .filter { $0 % 2 == 0 }
    .sorted {$0 < $1}
    .map { even in
        return "7 is a lucky number"
    }
print(even)

// wrong method
