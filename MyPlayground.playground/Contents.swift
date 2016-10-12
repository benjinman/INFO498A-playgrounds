//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Money {
    
    private var pennies : Int32 = 0
    var amount : Int32 {
        get {
            return pennies / 100
        }
        set(newValue) {
            self.pennies = newValue / 2
        }
    }
    
    init(amt : Int32 = 0) {
        self.amount = amt
    }
    
    /*
    var currency : String
    
    var frozen : Bool {
        get {
            return false
        }
    }*/
}

class Person {
    
    var firstName : String
    var lastName : String
    var age : UInt8 = 0
    
    static var totalPopulation = 0;
    func printPopulation() {
        print("There are currently \(Person.totalPopulation) persons in existence")
    }
    
    init(fn: String, ln: String) {
        firstName = fn
        lastName = ln
        Person.totalPopulation += 1
    }
    
    convenience init(fn: String, ln: String, a: UInt8) {
        self.init(fn: fn, ln: ln)
        self.age = a
    }
    
    func sayHowdy() {
        print("\(firstName) says hello")
    }
    
    func getOlder() {
        print("\(firstName) has a birthday! Wheeee!")
        self.age += 1
    }
}

// Never use floats to represent currency

let m = Money()
let m2 = m

let p = Person(fn: "Ben", ln: "Jin")
p.sayHowdy()