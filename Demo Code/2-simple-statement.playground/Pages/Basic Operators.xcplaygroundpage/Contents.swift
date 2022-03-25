/**
 * Basic operators (assigment, arithmetic, comparision) on variables in Swift
 * Created by Do Duc Quan on 06/03/2022.
 */

// ASSIGNMENT OPERATOR
var age : Double = 20
age = 0
print(age)  // 0.0

var (a, b) = (1, 2)
print(a)    // 1

var char = true
var user = "User"
var year : Int = Int(user) ?? 10  // year now holds 10 since cannot convert String "User" into Int.
print(year)                // 10


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


// COMPARISON OPERATOR
/* you can compare boolean types with one another */
print(true == false)  // False since true does not equal to false
print(true != false)  // True
/* or compare numbers */
print(2 != 1)   // true
/* or even strings */
print("zebran" < "apple")  // false since character will be converted to ascii number, then they get compared
print("Zebran" < "apple")  // true since "Z" has smaller ascii number than "a"