/**
 * Function's parameter and argument in Swift
 * Created by Do Duc Quan on 10/04/2022.
 */

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
