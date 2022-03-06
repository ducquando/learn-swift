/**
 * Playing around with variables and constants in Swift
 * Created by Do Duc Quan on 06/03/2022.
 */

var greeting = "Hello, world!"
var userName = "Do Duc Quan"
let age : Double = 20
var emoji : String?

print(greeting)                  // This also print "Hello, World!"
print()                          // Print a blank line
print("Hello,", userName)        // "Hello, Do Duc Quan"
print("Your age is", Int(age));  // "Your age is 20"
print("Your favorite emoji is", emoji ?? "lovely face") // "Your favorite emoji is lovely face" since we have not assign anything to emoji, so it uses the default value "lovely face" instead

emoji = "🥰"
print("Your favorite emoji is", emoji ?? "Lovely face") // "Your favorite emoji is 🥰" since this time we have assigned a value to the emoji variable
