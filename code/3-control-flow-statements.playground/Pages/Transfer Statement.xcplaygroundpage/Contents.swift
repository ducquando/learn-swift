/**
 * Control transfer statements in Swift
 * Created by Do Duc Quan on 26/03/2022
 */

// CONTINUE STATEMENT

for i in 0...5 {
    if i % 2 == 0 {   // skip even number
        continue
    }
    print(i)          // print odd number only
}
// 1
// 3
// 5


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


// FALLTHROUGH STATEMENT

num = 10
switch num {
case 15..<20:
    num = 20
case 10..<15:    // it gets here
    num = 15
    fallthrough
case 5..<10:     // then fall into here
    num = 10
case ..<5:       // does not get here
    num = 5
default:
    break
}
print(num)       // 10
