/**
 * Iteration statements in Swift: while and for-in
 * Created by Do Duc Quan on 26/03/2022
 */

// WHILE LOOP

let birthYear = 2020
let currentYear = 2020
var age : Int = 0
while currentYear > birthYear + age {
    age += 1
}
print(age)          // 0

let names1 = ["Quan", "Do", nil, "Duc"]
var index = 0
while let name1 = names1[index] {
    print(name1)
    index += 1
}
// Quan
// Do
print(index)        // 2


// REPEAT-WHILE LOOP

age = 0             // re-initialize
repeat {
    age += 1
} while currentYear > birthYear + age
print(age)          // 1


// FOR-IN LOOP

let names2 = ["Quan", "Do", "Duc"]
for name2 in names2 {
    print("Hello, \(name2)!")
}
// Hello, Quan!
// Hello, Do!
// Hello, Duc!

for char in names2[0] {
    print(char)
}
// Q
// u
// a
// n


// ITERATOR

var nameIterator = names2.makeIterator()
while let name3 = nameIterator.next() {
    print("Hello, \(name3)!")
}
// Hello, Quan!
// Hello, Do!
// Hello, Duc!
