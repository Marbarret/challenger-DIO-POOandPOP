import UIKit

class Math {
    func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
        return operation(n1, n2)
    }
    
    func multiply(no1: Int, no2: Int) async -> Int {
        return no1 * no2
    }
}

let result = Math().calculator(n1: 2, n2: 3) { (no1, no2) -> Int in
    return no1 * no2
}

let result2 = Math().calculator(n1: 2, n2: 3) { $0 * $1 }
print( result2 )

// async
Task {
    let myResult = await Math().multiply(no1: 2, no2: 3)
    print("O resultado da função async é: \(myResult)")
}
