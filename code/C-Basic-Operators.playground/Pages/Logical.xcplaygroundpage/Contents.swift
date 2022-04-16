/**
 * Logical operators in Swift
 * Created by Do Duc Quan on 06/03/2022.
 */

var hello = "Hello"
print(true || hello.count == 5)     // true, with short-circuit
print(true || (hello.count == 5))   // true, with short-circuit
print(false || hello.count == 5)    // true, no short-circuit

print(true || true && false)    // false
// That equals to:
print((true || true) && false)  // false
// And also equals to:
print((true || true) && !true)    // false
// But not equals to:
print(true || (true && false))  // true
