/**
 * Switch statements in Swift
 * Created by Do Duc Quan on 26/03/2022
 */

var age : Int = 20

let point = (2,5)
switch point {
case (2,2):
    print("First case")
case (5,5):
    print("Second case")
case (2, let x) where x < 5,
    (let x, _) where x > 5:
    print("Third case")
default:
    print("Default case")
}
// Default case

switch age {
case ..<13:
    print("Children")
case ..<18:
    print("Teen")
case ...23:
    print("Young Adult")
default:
    print("Adult")
}
// Young Adult

