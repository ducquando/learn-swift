/**
 * Break transfer statements in Swift
 * Created by Do Duc Quan on 26/03/2022
 */

// BREAK STATEMENT IN WHILE LOOP
var num = 20
while true {
    if num % 2 == 1 {   // terminate if odd number
        break
    }
    num += 1            // increase by 1
}
print(num)              // 21


// BREAK STATEMENT IN SWITCH
num = 20
switch num {
case ...5:
    num = 5
case ...10:
    num = 10
case ...15:
    num = 15
default:        // it gets here
    break
}
print(num)      // 20 - unchanged
