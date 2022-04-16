/**
 * Fallthrough transfer statements in Swift
 * Created by Do Duc Quan on 26/03/2022
 */

var num = 10
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
