/**
 * Nested functions in Swift
 * Created by Do Duc Quan on 10/04/2022.
 */

// NESTED FUNCTIONS
func func1() {
    // inner function A with no parameter and return type
    func funcA() {
        print("Reached funcA")
    }
    // inner function B with parameter and return type
    func funcB(_ num1: Int) -> Int {
        return -num1
    }
    
    funcA()
    print("The negative value of the input is:", funcB(24))
}
func1()
// "Reached funcA"
// "The inputed's negative value is: -24"


// ENCLOSING FUNCTION
func funcAorB(_ whatFunc: Bool) -> (Double) -> Double {
    func funcA(num: Double) -> Double { return num + 1 }
    func funcB(num: Double) -> Double { return num - 1 }
    return whatFunc ? funcA : funcB
}

let randomNum : Double = Double.random(in: 0...1)
let randomFunc = funcAorB(randomNum < 0.5)
let result = randomFunc(randomNum)
print(randomNum, "becomes", result)
