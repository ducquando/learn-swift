/**
 * Selection statements in Swift: if, switch, and guard
 * Created by Do Duc Quan on 26/03/2022
 */

// IF STATEMENT
// IF
var age : Int = 20

if age > 18 {
    print("Adult")
}
// Adult

// IF-ELSE
if age < 18 {
    print("Children")
} else {
    print("Adult")
}
// Adult

// IF-ELSE IF-ELSE
if age >= 23 {
    print("Adult")
} else if age > 18 {
    print("Young Adult")
} else {
    print("Children")
}
// Young Adult

if age > 18 && age < 23 {
    print("Young Adult")
} else if age <= 18 && age > 0 {
    print("Children")
} else {
    print("Adult")
}
// Young Adult


// SWITCH STATEMENT

let point = (2,5)
switch point {
case (2,2):
    print("First case")
case (5,5):
    print("Second case")
case (2, let x) where x < 5,
    (let x, _) where x > 5:
    print("Third case")
default:
    print("Default case")
}
// Default case

switch age {
case ..<13:
    print("Children")
case ..<18:
    print("Teen")
case ...23:
    print("Young Adult")
default:
    print("Adult")
}
// Young Adult


// GUARD STATEMENT

for i in 2...10 {
  // guard condition to check the even number
  guard i % 2 == 0 else {
      print(i)          // only print odd number
      continue
  }
}
// 3
// 5
// 7
// 9

