/**
 * Library-provided functions in Swift
 * An example of calling some functions from the Foundation library
 * Created by Programiz: https://www.programiz.com/swift-programming/functions
 * Adapted and modified by Do Duc Quan on 10/04/2022.
 */

import Foundation

// Compute a number's square root value
var squareRoot = sqrt(25)
print("Square Root of 25 is",squareRoot)   // Square Root of 25 is 5.0
squareRoot = sqrt(20)
print("Square Root of 20 is",squareRoot)   // Square Root of 25 is 4.472

// Compute the power of two numbers
var power = pow(2, 3)
print("2 to the power 3 is",power)         // 2 to the power 3 is 8
power = pow(4, 2)
print("4 to the power 2 is",power)         // 4 to the power 2 is 16

// Split an string into two sub strings
let hello = "Hello, World!"
func stringSpliting (_ str: String) -> (String, String) {
    let result = str.components(separatedBy: " ")
    return (result[0], result[1])
}
let (hello1, hello2) = stringSpliting(hello)
print(hello2, hello1)                      // World! Hello,
