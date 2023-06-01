import UIKit

// Access control restricts access to parts of your code from code in other source files and modules.
struct BankAccount {
    private(set) var funds = 0
    mutating func deposit(amount: Int) {
        funds += amount
    }
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)

    /*
    var account = BankAccount()
    account.deposit(amount: 100)
    let success = account.withdraw(amount: 200)
    if success {
        print("Withdrew money successfully")
    } else {
        print("Failed to get the money")
    }
    account.funds -= 1000
     */
