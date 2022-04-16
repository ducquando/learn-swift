/**
* Overloaded functions in Swift
* Created by Do Duc Quan on 10/04/2022.
*/

func multiply(_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2
}
func multiply(_ num1: Float, _ num2: Float) -> Float {
    return num1 * num2
}
func multiply(_ num1: Float, _ num2: Float, _ num3: Int) -> Float {
    var multiplication = num1 * num2
    multiplication *= Float(num3)
    return multiplication
}
func multiply(_ num1: Float, _ num2: Float, _ num3: Float) -> Int {
    var multiplication = Int(num1 * num2)
    multiplication *= Int(num3)
    return multiplication
}


print(multiply(4,3))          // 12
print(multiply(8.3,27.0))     // 224.1
print(multiply(4.5,1.2,5))    // 27.0
print(multiply(4.5,1.2,5.0))  // 25
