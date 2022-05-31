# Selection Statements

In Swift, there are three ways to add conditional branches to your code: `if`, `switch`, and `guard`.

### Table of Content
1. [If-else](#1-if)   
2. [Switch](#2-switch)   
3. [Guard](#3-guard)   

## 1. If
An `if` statement is used for executing code based on evaluating one or more conditions, which are of type `Bool` or type bridged to `Bool`, such as an optional binding declaration.

There are two primary forms of an `if` statement, with and without `else`. While the former form allows code to be executed only when a condition is `true`, the latter enables one part of code to be executed when the condition is `true` and another part of code to be executed when the same condition is `false`. In addition, you can chain multiple `if-else` statements to execute a different conditional statement in case the *previous* conditional expression evaluates to `false`.


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

if age >= 23 {
    print("Adult")
} else if age > 18 {
    print("Young Adult")
} else {
    print("Children")
}
// Young Adult
```

You can also use logical operators to link different conditions into one conditional expression. 

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

Besides, we can use a constant declaration `let` statement as the condition. The declaration returns `true` if it's executable and returns `false` when the assigning value is `nil` - meaning in-executable.

```swift
// Examples of using let statement as condition
let names = ["Quan", "Do", nil, "Duc"]
var index = 0
if let name = names[0] {
    print(name)
} else {
    print("inexecutable")
}
// Quan
```

Like logical statement, Swift also uses [short circuit](4-short-circuit-evaluation.md) on `if-elseif-else` statement. It means that Swift checks the conditions from top-down, the code block of the met condition is executed, and the rest code block will be ignored.

## 2. Switch

A `switch` statement allows certain code blocks to be executed depending on the value of a control expression. The control expression of the `switch` statement is evaluated and then compared with the patterns specified in each case. If a match is found, the program executes *only* the statements listed within the scope of that case. It will not allow implicit fallthrough. However, if you want to have a fallthrough in `switch`, you can explicitly tell Switch to do by using a control transfer statement called [`fallthrough`](7-control-transfer-statements.md/).

Unlike other languages, the values of expressions your code can branch on are very flexible. Floating-point numbers, strings, tuples, instances of custom classes, and Optionals are valid expression values. Moreover, you can use value binding `let x = ...` along with the `where` clause to match some specific values. Furthermore, the underscore character `_`, also known as the wildcard pattern, is used to match *any possible value*. 

Same as `if`, `switch` also allows compound case by writing several patterns after case, with a comma between each pattern. If any of the patterns match, the case is considered to match. Chained `switch` also shares the same behavior of `if` statement, which uses [short-circuit evaluation](4-short-circuit-evaluation.md).

```swift
// Examples of a switch statement

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

One more thing to note, the critical difference between `if` and `switch` in Switch is that the latter is exhaustive. There has to be at least one case that matches the control expression. Usually, we can obtain this through `default` case, which is similar to `else` in `if` statement. And in case we do not want anything to happen in default (or any) case, we can use another control transfer statement called [`break`](#g-control-transfer-statements).

## 3. Guard

The `guard` statement is the opposite of the `if` statement. It executes statements depending on the Boolean value of an expression. 

Although it uses the same method as `if` (executing the code if the condition is true), it is normally used to execute a code block inside the `else` branch if the condition is `false`. And the condition is normally an optional binding that returns `true` or `false` given the value's existence. Like the `if` statement, `guard` also accepts constant declaration as a condition.

Furthermore,` guard` is typically used inside a function or an iteration. As a result, a `guard` statement always has an `else` clause which includes a [control transfer statement](7-control-transfer-statements.md) such as `return`, `continue`, and `throw` to exit the function/iteration.

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

The above code illustrates using `guard` statement inside a for-in loop. Nevertheless, what does `for-in` loop mean? Let's find out!