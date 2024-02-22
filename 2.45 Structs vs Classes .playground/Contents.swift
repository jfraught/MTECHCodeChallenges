import UIKit

// Structs: A pass by value construct that can store data and create functions
struct Person {
    var name: String
    var age: Int
    var favoriteFood: String

    // a memberwise intializer is provided for free by swift unless you create any custom initializers yourself
}

var person = Person(name: "Jordan", age: 29, favoriteFood: "Lamb Tikka Masala")

// Classes: A pass by reference contruct that can store data, create functions, and inherit from another class

// Base class (also superclass to Car)
class Vehicle {
    var tires: Int
    var color: String

    //A memberwise initializer isn't provided by swift so the user must create one.
    init(tires: Int, color: String) {
        self.tires = tires
        self.color = color
    }

    // you can also create custom initializers
    init(tires: Int) {
        self.tires = tires
        color = "Green"
    }
}
// Creating a subclass
class Car: Vehicle {
    var hasAirConditioning: Bool

    init(hasAirConditioning: Bool, tires: Int, color: String) {
        self.hasAirConditioning = hasAirConditioning
        super.init(tires: tires, color: color)
    }
}

// If you clone an instance of a struct it's a completely new copy of that instance. Much like creating a physical copy of an article if you make notes on one copy they won't show up on the other
var newPerson = person
newPerson.name = "Bob"
print(person.name)
print(newPerson.name)

// If you clone an instance of a Class both variables will point to the same instance.
let greenCar = Car(hasAirConditioning: true, tires: 4, color: "Green")
let blueCar = greenCar
blueCar.color = "Blue"
print(blueCar.color)
print(greenCar.color)

