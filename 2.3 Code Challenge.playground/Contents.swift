import UIKit
import SwiftUI

// Create a Person class
// Will have a name, age, weight, and favoriteColor properties
class Person {
    var name: String
    var age: Int
    var weight: Double
    var favoriteColor: Color

    init(name: String, age: Int, weight: Double, favoriteColor: Color) {
        self.name = name
        self.age = age
        self.weight = weight
        self.favoriteColor = favoriteColor
    }
}

// Create a Student class
// This class inherits from Person.
// A student also has a currentClass, a grade, and a gpa property
class Student: Person {
    var currentClass: String
    var grade: String
    var gpa: Double

    init(currentClass: String, 
         grade: String,
         gpa: Double,
         name: String, 
         age: Int,
         weight: Double,
         favoriteColor: Color
    ) {
        self.currentClass = currentClass
        self.grade = grade
        self.gpa = gpa
        super.init(name: name, age: age, weight: weight, favoriteColor: favoriteColor)
    }
}

