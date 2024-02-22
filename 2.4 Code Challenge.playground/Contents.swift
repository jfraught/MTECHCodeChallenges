import UIKit

//Create a Person value type with the following attributes and behaviors:
// Attributes: name, age, height, weight
// Behaviors:
//    greeting: Print "Hello, my name is <name>, and I am <age> years old."
//    birthday: Increase age by one
//    growUp: Increase height by 0.1

struct Person {
    var name: String
    var age: Int
    var height: Double
    var weight: Double

    func greeting() {
        print("Hello, my name is \(name), and I am \(age) years old")
    }

    mutating func birthday() {
        age += 1
    }

    mutating func growUp() {
        height += 0.1
    }
}
