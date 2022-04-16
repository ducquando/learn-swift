/**
 * Assignment operators in Swift
 * Created by Do Duc Quan on 06/03/2022.
 */

var age : Double = 20
age = 0
print(age)  // 0.0

var (a, b) = (1, 2)
print(a)    // 1

var char = true
var user = "User"
var year : Int = Int(user) ?? 10  // year now holds 10 since cannot convert String "User" into Int.
print(year)                // 10
