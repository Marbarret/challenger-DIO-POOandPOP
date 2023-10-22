import UIKit

protocol Description {
    func descriptionInfo()
}

struct Person: Description {
    var name: String
    
    func descriptionInfo() {
        print("Nome: \(name)")
    }
}

struct Car: Description {
    var make: String
    var model: String
    
    func descriptionInfo() {
        print("Carro: \(make) \(model)")
    }
}

let person = Person(name: "Alice")
let car = Car(make: "Tesla", model: "Y")

print(person)
print(car)
