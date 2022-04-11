/**
 * Functions and its characteristics in Swift
 * Created by Do Duc Quan on 10/04/2022.
 */

// FUNCTION DECLARATION
// Example of a function printing the multiplication of 2 inputed numbers
func multiply(num1: Int, num2: Int) {
    print(num1, "times", num2, "equals", num1 * num2)
}


// FUNCTION CALLS
// Examples of the multiply function's calling statements
multiply(num1: 3, num2: 4)        // "3 times 2 equals 12"
multiply(num1: 50, num2: -9)      // "5 times -9 equals -450"
//multiply(num2: 50, num1: -9)    // error: num2 precede num1
//multiply(num1: 20)              // error: missing argument


// RETURN VALUES
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


// PARAMETERS AND ARGUMENT
// Example of a function that takes in two parameters and sums them up
func addNumbers(a: Int = 0, b: Int = 0) {
  let sum = a + b
  print("Sum:", sum)
}

addNumbers(a: 2, b: 3)        // Sum: 5
addNumbers()                  // Sum: 0

// Example of a swaping function that takes in 2 inout parameters
func swap(_ a: inout Int, _ b: inout Int) {
    let temporary = a
    a = b
    b = temporary
}
var someNum = 3
var anotherNum = 107
print("someNum is", someNum)             // someNum is 3
print("anotherNum is", anotherNum)       // anotherNum is 107

swap(&someNum, &anotherNum)
print("someNum is now", someNum)         // someNum is now 107
print("anotherNum is now", anotherNum)   // anotherNum is now 3

//swap(&7, &8)                           // error: cannot pass immutable value

// Example of immutable list and list's elements as parameters
// Comment out since it will prompt error in compile time
//func modifyList (lst: [Int]) {
//    let max = lst.count
//    for i in 0..<max {
//        lst[i] = lst[i] + 1      // error: lst is a let constant
//    }
//    lst = [4,5,6,7]              // error: lst is a let constant
//}
