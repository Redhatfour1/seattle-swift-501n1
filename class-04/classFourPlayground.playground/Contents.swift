//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Identification {
    case name(String, String)
    case sex(String)
    case eyeColor(String)
    case height(Int, Int)
    case weight(Int)
//    case (()->())
}

let myId = Identification.name("Louis", "Haywood")
let secondPersonId = Identification.sex("male")
let thirdPersonId = Identification.eyeColor("brown")
let fourthPersonId = Identification.height(5, 11)
let fifthPersonId = Identification.weight(210)

switch secondPersonId {
case.name(let name):
    print("name: \(name)")

case.sex(let sex):
    print("sex: \(sex)")

case.eyeColor(let eyeColor):
    print("eyeColor: \(eyeColor)")
    
case.height(let height):
    print("height: \(height)")
    
case.weight(let weight):
    print("weight: \(weight)")


}

class Person {
    var firstName = "Louis" {
        didSet {
            print("First name value has changed! The new value for first name is: \(firstName).")
        }
        willSet {
            print("The old value for first name was: \(firstName).")
        }
        
    }
    var lastName = "Haywood"
    var fullName : String {
        return firstName + " " + lastName
    }
}
class Student: Person {
//    init() {
//    self.id = UUID().uuidString
//    }

}
//Student.firstName = "Leonard"
//Student.lastName = "Hines"
var classHours = 3
var classDays = 10

var multiply: Int {
    return classHours * classDays
}
print(multiply)

class Classroom {
    static let shared = Classroom()
    var students = [Student]()
    private init() {}
}
func add(student: Student) {
   Classroom.shared.students.append(student)
}

func remove(student: String) {
    Classroom.shared.students.remove(at: 0)
}

func studentWith(id: Int)-> [Student] {
    for id in Classroom.shared.students {
        print("Students ID: \(id)")
       
    }
     return Classroom.shared.students
}

func allStudentNames()-> [Student] {
    return Classroom.shared.students
}

func studentCount()-> Int {
return Classroom.shared.students.count
}
