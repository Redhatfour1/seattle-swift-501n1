//: Playground - noun: a place where people can play

import UIKit

let name = "Louis"
let age = 21

func myAge (_ age: Int = 0) -> String {
    let int = "My age is \(age)."
    return int
}

func myHeight (tuple: (number: Int, unitOfMeasurement: String)) {
    let tuple = ("6", "feet")
}

func greeting (_ name: String) -> String {
    let string = "My name is \(name)."
    return string
}

func reverseGreeting (_ name: String) {
    let string = "My name is \(name)."
    let reversed = String(string.characters.reversed())
    print(reversed)
}

