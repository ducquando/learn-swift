/**
 * Guard statements in Swift
 * Created by Do Duc Quan on 26/03/2022
 */

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
