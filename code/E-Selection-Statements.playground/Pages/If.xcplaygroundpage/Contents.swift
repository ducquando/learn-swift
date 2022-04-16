/**
 * If statements in Swift
 * Created by Do Duc Quan on 26/03/2022
 */

var age : Int = 20

// IF
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

// USING CONSTANT DECLARATION AS CONDITION
let names = ["Quan", "Do", nil, "Duc"]
var index = 0
if let name = names[0] {
    print(name)
} else {
    print("inexecutable")
}
// Quan
