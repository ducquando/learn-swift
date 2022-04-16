/**
 * Arithmetic operators in Swift
 * Created by Do Duc Quan on 06/03/2022.
 */

// ARITHMETIC OPERATOR
var money : Double = 2000
money = money + 20.00  // We know that money is a Double, so we must add another Double to it
money += 20.00         // Another way of adding value to itself
print(String(Int(money))) // "2040"

print(4 / 3)   // 1
print(4.0 / 3.0) // 1.333333


// STRING CONCATENATION
var firstName = "Quan"
var middleName = "Duc"
var lastName = "Do"
print(lastName + " " + middleName + " " + firstName)   // "Do Duc Quan"
