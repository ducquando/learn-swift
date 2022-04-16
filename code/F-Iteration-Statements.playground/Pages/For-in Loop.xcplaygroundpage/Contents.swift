/**
 * Iteration statements in Swift: for-in loop
 * Created by Do Duc Quan on 26/03/2022
 */

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
