//: Playground - noun: a place where people can play

import UIKit

func planetNames() -> [String] {
    var planetArray = ["Mars", "Saturn", "Jupiter", "Venus", "Saturn", "Neptune", "Mercury", "Urnus", "Pluto", "Mars"]
    if planetArray.contains("Earth") {
        print("Earth exist")
    } else {
        planetArray.append("Earth")
    }
    let sortedPlanetNames = planetArray.sorted(by: {$0 < $1})
    print(sortedPlanetNames)
    return planetArray
}
planetNames()

let dictionaryPlanet: [String: String] = ["firstName" : "Louis", "middleName" : "Warren", "lastName" : "Haywood"]
func findValue() {
    if let dictionaryNames = dictionaryPlanet["firstName"] {
        print("Print first name: \(dictionaryNames).")
    } else {
        print("first name is not in dictionary")
    }
}

findValue()

func printAndCount(string: String) {
    var counts: [String: Int] = [:]
    for item in planetNames() {
        counts[item] = (counts[item] ?? 0) + 1
    }
    print(counts)
    
    for (key, value) in counts {
        print("\(key) occurs \(value) times(s)")
    }
}
printAndCount(string: "Louis")

