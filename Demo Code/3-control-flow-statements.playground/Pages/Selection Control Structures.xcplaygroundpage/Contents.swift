for i in 2...10 {
  // guard condition to check the even number
  guard i % 2 == 0 else {
      continue
  }

  print(i)
}

let bigRange = 0..<Int.max
let filtered = bigRange.lazy.filter { (int) -> Bool in
    return int.isMultiple(of: 2)
}
let lastThree = filtered.suffix(3)
for value in lastThree {
    print(value)
 }
// Output:
// 9223372036854775802
// 9223372036854775804
// 9223372036854775806

let birthYear : Int = 2020
let currentYear : Int = 2020
var age : Int = 0
while false {
    age += 1
}
print(age)


let names = ["Quan", "Do", "Duc"]
for name in names {
    print("Hello, \(name)!")
}
// Hello, Quan!
// Hello, Do!
// Hello, Duc!

print(name)

let name = names[0]
for char in name {
    print(char)
}
// Q
// u
// a
// n
print(name)

