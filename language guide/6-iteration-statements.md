# Iteration Statements

There are two main types of iteration in Swift: `while` loop and `for-in` loop. While a `while` loop is used when we don't know the number of iterations before the first iteration begins, a `for-in` loop is used when we want to iterate a specific Sequence.

### Table of Content
1. [While loop](#1-while-loop)   
2. [For-in loop](#2-for-in-loop)   

## 1. While loop

A `while` loop performs a set of statements until a condition becomes `false`. There are two `while` loop types: `while` and `repeat-while`.

- `while` evaluates its condition at the start of each pass through the loop.

```swift
while condition {
    statements
}
```
- `repeat-while` evaluates its condition at the end of each pass through the loop. `repeat-while` is used when we want to execute the code inside the loop at least once.

```swift
repeat {
    statements
} while condition
```

In most cases, we will use `while` loop. However, there will be some situations that you want to execute at least one time, no matter what the condition is. 

Besides, we can also use a constant declaration statement as the loop's condition.

```swift
// Examples of using let statement as loop's condition
let names = ["Quan", "Do", nil, "Duc"]
var index = 0
while let name = names[index] {
    print(name)
    index += 1
}

// Quan
// Do
```

## 2. For-in loop

As said before, `for-in` is used to iterate over a sequence: an array's items, ranges of numbers, or characters in a string. The skeleton of `for-in` is:

```swift
for iterator in sequence {
    statements
}
```
where `iterator` is a local temporary variable that holds the item's value inside the sequence on each iteration. It means that `iterator` cannot be used outside the loop. Moreover, this protocol's applied to every variable declared inside the loop. 

```swift
// You cannot do this:
for i in [1,2,3] {
    // do sth here
}
print(i)       // error: cannot find 'i' in scope
```

You cannot implicitly change the `iterator` since it is immutable. For example:

```swift
// You also cannot do this:
for i in [1,2,3] {
    i = 4      // error: 'i' is a 'let' constant
}
```

Because the loop continues until we reach the last item in the sequence, the times of looping equals the size of the sequence. However, for unordered sequences such as Set and Dictionary, the behavior of each run time is different.

That is all. Below are more examples of `for-in` loop.

```swift
// Examples of for-in loops

let names = ["Quan", "Do", "Duc"]
for name in names {
    print("Hello, \(name)!")
}
// Hello, Quan!
// Hello, Do!
// Hello, Duc!


let name = names[0]
for character in name {
    print(character)
}
// Q
// u
// a
// n
```

To this point, you might question the difference between `while` and `for-in` loop and whether we can use them interchangeably. In fact, we can. Every time we use a `for-in` loop, we're using an iterator via a `while` loop. We use a method called `makeIterator()` on the sequence that we want to iterate to create an iterator. As a result, we can transform the above `for-in` loop into a while loop as below:

```swift
// Examples of iterator in while loop

let names = ["Quan", "Do", "Duc"]
var nameIterator = names.makeIterator()
while let name = nameIterator.next {
    print("Hello, \(name)!")
}

// Hello, Quan!
// Hello, Do!
// Hello, Duc!
```
