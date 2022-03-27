# Control Flow Statements

Do you know not all code in your Swift program run? 

### Table of Content
- [1. Selection](#1-selection)  
  - [1.1. If](#11-if)  
  - [1.2. Switch](#12-switch)  
  - [1.3. Guard](#13-guard)  
- [2. Iteration](#2-iteration)  
  - [2.1. While Loop](#21-while-loop)  
  - [2.2. For-in Loop](#22-for-in-loop)  
- [3. Control Transfer](#3-control-transfer)  

## 1. Selection
As default, *all* the codes will be run singly and top-down. However, it’s often useful to execute certain parts of code depending on the value of one or more conditions, which is called conditional branch. In Swift, there are three ways to add conditional branch to your code: `if`, `switch`, and `guard`.

### 1.1. If

An `if` statement is used for executing code based on the evaluation of one or more conditions, which are of type `Bool` or type bridged to `Bool` such as an optional binding declaration.

There are two basic forms of an `if` statement, with and without `else`. While the former form allows code to be executed only when a condition is `true`, the latter enables one part of code to be executed when the condition is `true` and another part of code to be executed when the same condition is `false`. 

```swift
// Examples of different forms of if statements
var age : Int = 20
if age > 18 {
    print("Adult")
}
// Adult

if age < 18 {
    print("Children")
} else {
    print("Adult")
}
// Adult
```

Notice the use of curly brackets `{}`? It is used to avoid dangling-else ambiguity. In addition, you can chain multiple `if-else` statement to execute a different conditional statement in case the *previous* conditional expression evaluates to `false`.

```swift
// Examples of a chained if statements
var age : Int = 20
if age >= 23 {
    print("Adult")
} else if age > 18 {
    print("Young Adult")
} else {
    print("Children")
}
// Young Adult
```

You can also use logical operators to link different conditions to become one conditional expression. 

```swiftt
// Examples of the use of logical operator in if statements
var age : Int = 20
if age > 18 && age < 23 {
    print("Young Adult")
} else if age <= 18 && age > 0 {
    print("Children")
} else {
    print("Adult")
}
// Young Adult
```

Like logical statement, Swift also uses [short circuit](../../../language%20guide/2-simple-statements/#35-logical) on `if-else if-else` statement. It means that Swift checks the conditions from top-down, the code block of the met condition is executed, and the rest code block will be ignored.

### 1.2. Switch

A `switch` statement allows certain blocks of code to be executed depending on the value of a control expression. The control expression of the `switch` statement is evaluated and then compared with the patterns specified in each case. If a match is found, the program executes *only* the statements listed within the scope of that case. It will not allow implicit fallthrough. However, if you want to have a fallthrough in `switch`, you can explicitly tell Switch to do by using a control transfer statement called [`fallthrough`](#3-control-transfer).

Unlike other languages, the values of expressions your code can branch on are very flexible. Floating-point numbers, strings, tuples, instances of custom classes, and optionals are valid values of expression. Moreover, you can use value binding `let x = ...` along with `where` clause to match some specific values. Furthermore, the underscore character `_`, also known as the wildcard pattern, is used to match *any possible value*. 

Same as `if`, `switch` also allows compound case by writing several patterns after case, with a comma between each of the patterns. If any of the patterns match, then the case is considered to match. Chained `switch` also shares the same behavior of `if` statement, which uses short-circuit evaluation.

```swift
// Examples of switch statement

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

let age = 20
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
```

One more thing to note, the key difference between `if` and `switch` in Switch is that the latter is exhaustive. Saying, there has to have at least one case that matches the control expression. Usually, we can obtain this through `default` case, which is similar to `else` in `if` statement. And in case we did not want anything to happen in a default (or any) case, we can use another control transfer statement called [`break`](#3-control-transfer).

### 1.3. Guard

The `guard` statement is an opposite of `if` statement. It executes statements depending on the Boolean value of an expression. 

Although it uses the same method as `if` (executing the code if the condition is true), it is normally used to execute a code block inside `else` branch if the condition is `false`. And the condition is normally an optional binding that returns `true` or `false` given the value's existence.

Furthermore,` guard` is typically used inside a function or an iteration. As a result, a `guard` statement always has an `else` clause which includes a [control transfer statement](#3-control-transfer) such as `return`, `continue`, and `throw` to exit the function/iteration.

```swift
// Example of a guard statement 

for i in 2...10 {
  // guard condition to check the even number
  guard i % 2 == 0 else {
      print(i)          // only print odd number
      continue          // continue the iteration
  }
}
// 3
// 5
// 7
// 9
```

The above code illustrates the use of `guard` statement inside a for-in loop. Nevertheless, what does `for-in` loop mean? Let's find out!

## 2. Iteration

There are two main types of iteration in Swift: `while` loop and `for-in` loop. While a `while` loop is used when we don't know the number of iterations before the first iteration begins, a `for-in` loop is used when we want to iterate a specific Sequence.

### 2.1. While loop

A `while` loop performs a set of statements until a condition becomes `false`. There are two types of `while` loop: 
- `while` evaluates its condition at the start of each pass through the loop.
```swift
while condition {
    statements
}
```
- `repeat-while` evaluates its condition at the end of each pass through the loop. `repeat-while` is used when we want to execute the code inside the loop at least one time.
```swift
repeat {
    statements
} while condition
```

Below are an implementation of `while` and `repeat-while` loops on the same task.

```swift
// Example of using while loop to calculate age
let birthYear : Int = 2002
let currentYear : Int = 2022
var age : Int = 0
while currentYear >= birthYear + age {
    age += 1
}
print(age)    // 20
```

```swift
// Example of using repeat-while loop to calculate age
let birthYear : Int = 2002
let currentYear : Int = 2022
var age : Int = 0
repeat {
    age += 1
} while currentYear >= birthYear + age
print(age)    // 20
```

In above examples, the values returned by while loop and repeat-while loop are identical, and the use of two loops can be interchangeable. This is because `birthYear` is known to be larger than `currentYear`. However, what happens when `birthYear` equals `currentYear`?

```swift
// Example of using while loop and repeat-while to calculate age
let birthYear : Int = 2022
let currentYear : Int = 2022

var age : Int = 0
while currentYear > birthYear + age {
    age += 1
}
print(age)    // 0

age = 0       // reset age to the initial value
repeat {
    age += 1
} while currentYear > birthYear + age

print(age)    // 1
```

As you can see, the results are now different (0 vs 1). This is because `repeat-while` evaluates its condition at the end rather than in the beginning as `while` loop does. In most cases, we will use `while` loop. However, there will be some situations that you want to execute at least one time, no matter the condition is. For example, the below example will run at least one time.

```swift
// Example of using repeat-while with a always-false condition
repeat {
    print("Executable")
} while false

// Executable
```

Besides, we can use a variable declaration statement as the loop's condition. The declaration returns `true` if it's executable, and returns `false` when the assigning value is `nil` - meaning in-executable.

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

### 2.2. For-in loop

As said above, `for-in` is used to iterate over a sequence, such as items in an array, ranges of numbers, or characters in a string. The skeleton of `for-in` is:
```swift
for iterator in sequence {
    statements
}
```
where `iterator` is a locally temporary variable that holds the value of the item inside the sequence on each iteration. It means that `iterator` cannot be used outside of the loop. Moreover, this protocol's applied to every variables declared inside the loop. 

```swift
// You cannot do this:
for i in [1,2,3] {
    // do sth here
}
print(i)       // error: cannot find 'i' in scope
```

You also cannot implicitly change the `iterator` since it is immutable. For example:

```swift
// You also cannot do this:
for i in [1,2,3] {
    i = 4      // error: 'i' is a 'let' constant
}
```

One more thing, because the loop continues until we reach the last item in the sequence, the times of looping equals the size of the sequence. However, for unordered sequences such as Set and Dictionary, the behavior of each run time is different.

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

To this point, you might question what is the difference between `while` and `for-in` loop and can we use them interchangeable. In fact, we can. Every time we use a `for-in` loop, we’re using an iterator via a `while` loop. To create a iterator, we use a method called `makeIterator()` on the sequence that we want to iterate. As a result, we can transform the above `for-in` loop into a while loop as below:

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

## 3. Control Transfer
Control transfer statements change the order in which your code is executed, by transferring control from one piece of code to another. Swift has three important control transfer statements: `continue`, `break`, and `fallthrough` that relate to the control flow structures.

<table>
<thead>
  <tr>
    <th>continue</th>
    <th>break</th>
    <th>fallthrough</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Skip the current iteration and moves to the next one</td>
    <td>Terminate the entire control flow statement immediately</td>
    <td>Continue the program execution to the next case, regardless of matching control expression</td>
  </tr>
  <tr>
    <td>Used in all iteration control statements (for-in, while)</td>
    <td>Used in all iteration control statements (for-in, while) and selection control statement (switch)</td>
    <td>Used in selection control statement (switch)</td>
  </tr>
  <tr>
    <td colspan="2">Provide vulnerabilities on code block since the rest of code is ignored.<br>More dangerous than a short circuit.</td>
    <td>Provide vulnerabilities on code block since two (or more) cases are executed instead of only one</td>
  </tr>
  <tr>
    <td colspan="2">Have effect on the innermost in case of nested control statement. However, can be told to have effect on a specific statement using label.</td>
    <td>Have effect on the current case and one case right below it</td>
  </tr>
</tbody>
</table>

Below are some examples of some control transfer statements.

```swift
// Example of continue statement in for-in loop

for i in 0...5 {
    if i % 2 == 0 {   // skip even number
        continue
    }
    print(i)          // print odd number only
}
// 1
// 3
// 5
```

```swift
// Example of break statement in while loop

var num = 20
while true {
    if num % 2 == 1 {   // terminate if odd number
        break
    }
    num += 1            // increase by 1
}
print(num)              // 21


// Example of break statement in switch

var num = 20
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
```

```swift
// Example of fallthrough in switch

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
```

## References
Inc., A. (2022). *About the Language Reference*. The Swift Programming Language (Swift 5.6). Retrieved March 25, 2022, from https://docs.swift.org/swift-book/ReferenceManual/AboutTheLanguageReference.html  

Inc., A. (2022). *Language Guide*. The Swift Programming Language (Swift 5.6). Retrieved March 25, 2022, from https://docs.swift.org/swift-book/LanguageGuide  

Veen, T. in't. (2019). Chapter 9. Iterators, sequences, and collections. In *Swift in depth*. Manning. 
