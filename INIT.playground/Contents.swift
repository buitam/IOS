import UIKit

class Person {
var name: String
var age: Int

// Designated Initializer
init(name: String, age: Int) {
    self.name = name
    self.age = age
}

// Convenience Initializer
convenience init(ten: String, yearOfBirth: Int) {
    let date = Date()
    let calendar = Calendar.current
    let year = calendar.component(.year, from: date)
    self.init(name: ten, age: year - yearOfBirth)
}

}
var tam,tam1:Person

tam = Person(ten: "tam", yearOfBirth: 1998)
print(tam.name)
print(tam.age)

