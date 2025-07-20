import UIKit

var greeting = "Hello, playground"
// can also explicitely declare the type as -> var greeting:String = ...
print(greeting)

greeting = "Wut up, World!"
print(greeting)

var myInt = 5
print(myInt)

print(sayHelloTo(name:"Todd"))

let result = getSum(firstNum: 6, secondNum: 10) // let is a constant, cant' change it's value after initial declaration
print(result)

let result2 = getSum(5, 25)
print(result2)

func sayHello() -> String {
    return "Hello!"
}

func sayHelloTo(name: String) -> String { // -> String declares the return type
    return "Hello, \(name)!"
}

func getSum(firstNum: Int, secondNum: Int) -> Int {
    return firstNum + secondNum
}

func getSum(_ a: Int, _ b: Int) -> Int { // you can override funcs this way (maybe a private func)
    return a + b
}
