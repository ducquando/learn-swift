/**
 * Short-circuit behavior in Swift
 * Created by Do Duc Quan on 16/04/2022.
 */

// Example of dirty codes catched in compile time
//print(true || ("dar" == 9))   // error: cannot compare String with Int
//print(true || 9 / 0 == 0)     // error: cannot divide by 0

// Example of dirty codes NOT catched because of short-circuit
var zero = 0
print(true || 9 / zero == 0)     // true
