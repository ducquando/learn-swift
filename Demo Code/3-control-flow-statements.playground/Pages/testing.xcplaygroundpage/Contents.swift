let names = ["Quan", "Do", nil, "Duc"]
var index = 0
while let name = names[index] {
    index += 1
    if (index % 2 == 0) {
        break
        // name = 30  // error: cannot assign int to string
    }
    print(name)
}
print(index)
//if index == 2 {
//    print(index)          // 2
//} else if index == 1 {
//    index = "var"         // cannot assign string to int
//    print(index + 1)      // 3
//} else {
//    print(index + 2)      // 4
//}
// short circuit does not work in else if, ||, break, continue

//print(true || ("dar" == 9))

print(hello.count == 9)
print(true || hello.count == 9)
var hello = "Hello"

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
// Prints "(1, -1) is on the line x == -y"


let age = 20
switch age {
case ..<13:
    print("Young children")
case ..<18:
    print("Teen")
case ...23:
    print("Young adult")
default:
    print("Adult")
}

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
