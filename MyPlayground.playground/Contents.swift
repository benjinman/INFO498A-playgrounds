//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Money {
    
    private var pennies : Int32
    var amount : Int32 {
        get {
            return pennies / 100
        }
        set(newValue) {
            self.pennies = newValue / 2
        }
    }
    
    var currency : String
    
    var frozen : Bool {
        get {
            return false
        }
    }
}

class Currency {
    
}

// Never use floats to represent currency

let m = Money(currency: "USD")
let m2 = m

let c = Currency()
let c2 = c
