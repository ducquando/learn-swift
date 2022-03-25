/**
 * Playing around with variables and constants in Swift
 * Created by Do Duc Quan on 06/03/2022.
 */

// BASIC STRING VARIABLE
var greeting = "Hello, world!"
print(greeting)                  // "Hello, World!"
print()                          // Print a blank line

// VARIABLE ASSIGNMENT
var greeting2 = greeting
print(greeting2)                 // "Hello, World!"
greeting = "Do Duc Quan"
print(greeting)                  // "Do Duc Quan"
print(greeting2)                 // "Hello, World!" - the value does not change since assign one variable's value to another variable means copying the value
print()


// EXPLICIT TYPING CONVERSION
let age : Double = 20
print("Hello,", greeting)        // "Hello, Do Duc Quan"
print("Your age is", age)        // "Your age is 20.0"
print("Your age is", Int(age))   // "Your age is 20"
print()


// VARIABLE'S OPTIONAL VALUE
var emoji : String?
print("Your favorite emoji is", emoji ?? "lovely face") // "Your favorite emoji is lovely face" since we have not assign anything to emoji, so it uses the default value "lovely face" instead
emoji = "🥰"
print("Your favorite emoji is", emoji ?? "Lovely face") // "Your favorite emoji is 🥰" since this time we have assigned a value to the emoji variable

