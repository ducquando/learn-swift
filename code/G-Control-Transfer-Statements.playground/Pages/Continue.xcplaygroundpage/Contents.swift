/**
 * Continue transfer statements in Swift
 * Created by Do Duc Quan on 26/03/2022
 */

for i in 0...5 {
    if i % 2 == 0 {   // skip even number
        continue
    }
    print(i)          // print odd number only
}
// 1
// 3
// 5
