/**
 * Return values of function in Swift
 * Created by Do Duc Quan on 10/04/2022.
 */

// Example of a function with no return value
func multiplyNo(num1: Int, num2: Int) {
    print(num1, "times", num2, "equals", num1 * num2)
}

// Example of a function with one return value
func multiplyOne(num1: Int, num2: Int) -> Int {
    return num1 * num2
}
var result = multiplyOne(num1: 4, num2: 8)
print(result)            // 32

// Example of a function with many return values
func multiplyMany(num1: Int, num2: Int) -> (Int, Int, Double) {
    let multi : Double = Double(num1 * num2)
    return (num1, num2, multi)
}
var (num1, num2, mul) = multiplyMany(num1: 4, num2: 8)
print(mul)              // 32.0
print(num1 * num2)      // 32
