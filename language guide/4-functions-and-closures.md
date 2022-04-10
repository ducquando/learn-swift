#  Functions and Closures

How do functions break up? Maybe by stop calling each other!

### Table of Content
- [1. Functions](#1-functions)  
    - [1.1. Function Declaration and Calling](#11-function-declaration-and-calling)  
    - [1.2. Return Values](#12-return-values)  
    - [1.3. Parameters and Arguments](#13-parameters-and-arguments)  
    - [1.4. Function Types](#14-function-types)  
- [2. Overloaded Functions](#2-overloaded-functions) 
- [3. Nested Functions](#3-nested-functions)  
- [4. Library-provided Functions](#4-library-provided-fuctions)  
- [5. Recursions](#5-recursions)  

## 1. Functions
A *function* is a reusable block of code that performs a specific task. There are two types of function in Swift: user-defined and library-provided. As explained by theirs names, the latter is already provided by Swift's library and the former has to be manually declared. 

There is no rule on whether to place the function call and declaration in Swift. You can also call first and declare later. All works in Swift.

So the question now becomes how to declare and call a function. 

### 1.1. Function Declaration and Calling

The syntax to declare a function is:
```swift
func functionName(parameters)-> returnType {
  // function body 
}
```
where:
- `func` is the type keyword used to declare a function
- `functionName` is any name given to the function. A function must have a distinguishable function name.
- `parameters` are any `name: type` values passed to the function. A function can have zero, one, or more parameters. In the event of more-than-one parameters, they are separated with each other by a comma `,`.
- and `returnType` is a specific type of value returned by the function. A function may or may not have an explicit return type. However, in the background, it always returns something.

Below is an example of a function that takes in 2 numbers, multiplies them, and prints the output. The function does not return anything.

```swift
// Example of a function printing the multiplication of 2 inputed numbers

func multiply(num1: Int, num2: Int) {
    print(num1, "times", num2, "equals", num1 * num2)
}
```

Although the function's purpose is to print out an integer, you won't see anything number printed out to the console if you run the code. This is because we have not "called" the function. 

Due to its resuability, a function has to be called so as to be executed. Calling function, in fact, is easy and similar to that in other programming language. The syntax is:

```swift
functionName(arguments)
```

where:
- `functionName` is the name of the already-declared function
- `arguments` are associated `name: value` values passed to the parameters.

By default, the number and the order of need-passed arguments is also those of parameters. Similar to parameter, arguments are also separated with one another by a comma `,`. One more thing, the argument's name and type must match those of parameter. Detailed information will be discussed more in the below section of [argument & parameter](#12-parameter-and-argument).

Let's continue where we left. Below is the calling statement of the above-declared multiply function. Since the function requires 2 parameters: num1 and num2, we also have to give the calling statement 2 related arguments.

```swift
// Examples of the multiply function's calling statements

func multiply(num1: Int, num2: Int) {
    print(num1, "times", num2, "equals", num1 * num2)
}

multiply(num1: 3, num2: 4)     // "3 times 2 equals 12"
multiply(num1: 50, num2: -9)   // "5 times -9 equals -450"
multiply(num2: 50, num1: -9)   // error: num2 precede num1
multiply(num1: 20)             // error: missing argument
```

### 1.2. Return Values

*Return values* are the value that a function returns rather than doing other actions such as printing. Return values are extremely flexible in Swift as you can return nothing, one value, or multiple values.

#### a. Function Without Return Value

Functions aren’t required to define a return type. When a function doesn't have a return type means it doesn’t return a value. Therefore, its definition doesn’t include the return arrow (->) or a return type.

```swift
// Example of a function with no return value

func multiply(num1: Int, num2: Int) {
    print(num1, "times", num2, "equals", num1 * num2)
}
```

> Strictly speaking, this type of function does still return a value, even though no return value is defined. Functions without a defined return type return a special value of type `Void`. This is simply an empty tuple, which is written as `()`.

#### b. Function With Return Values

If we want our function to return some value, we use the `return` statement and `return type`. A function with a defined return type can’t allow control to fall out of the bottom of the function without returning a value, and attempting to do so will result in a compile-time error.

With *return values*, we can access and assign the result of the function to a variable in outer scope. For example, we can modify the function `multiply()` above to returns an Int rather than printing that Int out, then assigns the return value to a variable called `result`.

```swift
// Example of a function with one return value

func multiply(num1: Int, num2: Int) -> Int {
    return num1 * num2
}
var result = multiply(num1: 4, num2: 8)
print(result)           // 32
```

Quite a cheat but [`tuple` type](../../../language%20guide/2-simple-statements.md#e-tuples) can be used as the `return type` to make a function to return multiple values as part of one compound return value. For example, instead of returning just the result, we will want to return all integers in the function `multiply()`.

```swift
// Example of a function with many return values

func multiply(num1: Int, num2: Int) -> (Int, Int, Double) {
    let multi : Double = Double(num1 * num2)
    return (num1, num2, multi)
}
var (num1, num2, result) = multiply(num1: 4, num2: 8)
print(result)           // 32.0
print(num1 * num2)      // 32
```

As you can se above, a tuple-typed return value can have many variables of different primitive types. *Tuple* also allows optional binding, which can be used as a *return type* to reflect the fact that the entire tuple can be nil. You write an optional tuple return type by placing a question mark after the tuple type’s closing parenthesis, such as `(Int, Int)?` or `(String, Int, Bool)?`.

### 1.3. Parameters and Arguments
#### a. Parameters
A function parameter is a `name: type` value that is accepted by and got *passed by value* into a function. A function may or may not have input parameters. Let's see an example:

```swift
// Example of a function that takes in two parameters and sums them up
// Source: Programiz

func addNumbers(a: Int, b: Int) {
  let sum = a + b
  print("Sum:", sum)
}

addNumbers(a: 2, b: 3)        // Sum: 5
```

In the above example, the function `addNumbers()` takes two parameters: `a` and `b`. In the calling statement, `a: 2, b: 3` specifies that parameters `a` and `b` will get values 2 and 3 respectively. And those values (`2` and `3`) are called [*arguments*](#b-arguments).

In some cases, a function can have default parameter values to omit that parameter when calling the function. Default parameter value is defined by assigning a value to the parameter after that parameter’s type. For example:

```swift
// Example of a function that takes in two parameters and sums them up

func addNumbers(a: Int = 0, b: Int = 0) {
  let sum = a + b
  print("Sum:", sum)
}

addNumbers(a: 2, b: 3)           // Sum: 5
addNumbers()                     // Sum: 0
```

Since parameters are pass-by-value, Swift makes it a let constant within the functions scope to prevent any changes. For example, both the inputed list and input list's elements are *immutable*.

```swift
// Example of immutable list and list's elements
var numList = [0,3,4,5]
func modifyList (lst: [Int]) {
    let max = lst.count
    for i in 0..<max {
        lst[i] = lst[i] + 1      // error: lst is a let constant
    }
    lst = [4,5,6,7]              // error: lst is a let constant
}
modifyList(lst: numList)
print(numList)
```

Although parameters in Swift are *pass-by-value*, the default characteristic of parameter can be changed into *pass-by-reference* by using *in-out parameter*.

An in-out parameter is the one that’s passed *in* to the function, is modified by the function, and is passed back *out* of the function to replace the original value. 

To write an *in-out parameter*, place the `inout` keyword right before a parameter’s type and an ampersand `&` directly before argument variable’s name.

Here’s an example of a function called `swap()` that swaps two in-out integer parameters:

```swift
// Example of a swaping function that takes in 2 inout parameters
func swap(a: inout Int, b: inout Int) {
    let temporary = a
    a = b
    b = temporary
}
var someNum = 3
var anotherNum = 107
print("someNum is", someNum)             // someNum is 3
print("anotherNum is", anotherNum)       // anotherNum is 107

swap(&someNum, &anotherNum)
print("someNum is now", someNum)         // someNum is now 107
print("anotherNum is now", anotherNum)   // anotherNum is now 3
```

#### b. Arguments

The argument label is used when calling the function. Each argument is written in the function call with its argument label before it. By default, parameters use their parameter name as their argument label. However, one may want to specify the argument labels.

In that case, you write an argument label before the parameter name, separated by a space. If you have an argument label, you will have to refer to it when call the function. For example:

```swift
// Skeleton of a function with argument label

func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName will be refered to
}
// Outside the function, argumentLabel will be used
someFunction(argumentLabel: 8)
```

If you don’t want an argument label for a parameter, write an underscore `_` instead of an explicit argument label for that parameter. Then you can omit the argument label when call the function. 

```swift
// Skeleton of a function with omitted argument label

func someFunction(_ parameterName: Int) {
    // function body
}
someFunction(8)
```

### 1.4. Function Types

Every function has a specific *function type*, made up of the parameter types and the return type of the function. For example, we have two functions as below:

```swift
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
```

The type of both of these functions is `(Int, Int) -> Int`. This can be read as "a function that has two parameters, both of type `Int`, and that returns a value of type `Int`.”

## 2. Library-provided Functions

Beside user-declared function, we also have another type called *library-provided function* (also called standard library functions). Basically, it is a function that can be used directly in the program without declaration. Some common ones are: `print()`, `sqrt()`, and `pow()`.

Most *library-provided functions* are defined inside a framework, which requires manual import to the program. For example, `sqrt()` and `pow()` are defined inside the `Foundation` framework, so the `Foundation` framework must be imported before any built-in function calls. 

Below is the example of importing a library and calling its built-in functions:

```swift
// Example of calling some mathematic functions from the Foundation library

import Foundation

// Computes the square root of a number
var squareRoot = sqrt(25)
print("Square Root of 25 is",squareRoot)   // "Square Root of 25 is 5.0"

// Computes the power of two numbers
var power = pow(2, 3)
print("2 to the power 3 is",power)         // "2 to the power 3 is 8"
```

You have earn the power of buit-in functions. Let's practice it.

What if we have the string "Hello, World!" and would like to split it into multiple strings like "Hello," and "World!". In this case, we can accomplish the task by using `components(separatedBy:)` - a function provided by `Foundation` framework that returns an array containing substrings of a string.

```swift
// Example of calling a string-splitting function from the Foundation library

import Foundation

let hello = "Hello, World!"
let result = hello.components(separatedBy: " ")
print(result[1], result[0])      // World! Hello,
```

We can also encapsulate above program into a function that takes in a string, splits it into two, then returns both strings. 

```swift
// Example of a function that split an string into two sub strings using a library-provided function
let hello = "Hello, World!"
func stringSpliting (_ str: String) -> (String, String) {
    let result = str.components(separatedBy: " ")
    return (result[0], result[1])
}
let (hello1, hello2) = stringSpliting(hello)
print(hello2, hello1)      // World! Hello,
```

## 3. Overloaded Functions

Although function's name has to be distinct as stated above, two or more functions may share a name if they differ in parameters. This type of functions are called *overloaded functions*. And based on the number of arguments passed during the function call, the corresponding function is called.

For example, we can alter above `mutiply()` function to accept different type and number of parameters.

```swift
// Example of an overloaded functions

func multiply(_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2
}
func multiply(_ num1: Float, _ num2: Float) -> Float {
    return num1 * num2
}
func multiply(_ num1: Float, _ num2: Float, _ num3: Int) -> Float {
    var multiplication = num1 * num2
    multiplication *= Float(num3)
    return multiplication
}
func multiply(_ num1: Float, _ num2: Float, _ num3: Float) -> Int {
    var multiplication = Int(num1 * num2)
    multiplication *= Int(num3)
    return multiplication
}

print(multiply(4,3))          // 12
print(multiply(8.3,27.0))     // 224.1
print(multiply(4.5,1.2,5))    // 27.0
print(multiply(4.5,1.2,5.0))  // 25
```

As you can see above, *overloaded functions *may have the same or different return types, but they must differ in parameters. Since parameter and return type can extensively affect the return value, one must be careful when using *overloaded function*.

## 4. Nested Functions
*Nested function* is a function that exists inside the body of another function. We can have a simple *nested function* with or without parameter and return value.

```swift
// Skeleton of nested functions

func func1() {
    // func1body
    
    // inner function A with no parameter and return type
    func funcA() {
        // funcAbody
    }
    
    // inner function B with parameter and return type
    func funcB(num1: Int) -> Int {
        // funcBbody
    }
}
```

We can also have a function being the return value of a function. This is called *enclosing function`. 

```swift
// Examples of an enclosing function

func funcAorB(whatFunc: Bool) -> (Double) -> Double {
    func funcA(num: Double) -> Double { return num + 1 }
    func funcB(num: Double) -> Double { return num - 1 }
    return whatFunc ? funcA : funcB
}
```

In the above example, the functions `funcA()` and `funcB()` are nested inside the `funcAorB` function. The return type `(Double) -> Double` specifies that the outer function returns a function with:
- one parameter of `Double` type
- and a return value of `Double` type
Since this matches the function definition of inner functions, the outer function returns one of the inner functions. For example, when we call `funcAorB()` function, it will return either `funcA()` or `funcB()`; and we can use this return value as a function. For example:

```swift
// Examples of an enclosing function and its calling statement

func funcAorB(_ whatFunc: Bool) -> (Double) -> Double {
    func funcA(num: Double) -> Double { return num + 1 }
    func funcB(num: Double) -> Double { return num - 1 }
    return whatFunc ? funcA : funcB
}

let randomNum : Double = Double.random(in: 0...1)
let randomFunc = funcAorB(randomNum < 0.5)
let result = randomFunc(randomNum)
print(randomNum, "becomes", result)
```

## 5. Recursions

*Recursion* is a common techique in programming that makes a function call itself. A recursion must include a base case and a recursive call, which is reflected in the below recursive function's skeleton.

```swift
// Skeleton of recursion

func recurse() {
    base case
    
    recurse()
}
```
### a. Base case

*Base case* is a name for the recursion's stopping condition. If there isn't any stopping condition, the function will keep calling itself infinitely. One simple way to implement the base case is to use an `if` statement as below:
 
```swift
// Skeleton of recursion

func recurse() {
    if condition {
        ...
    }
    
    recurse()
}
```

### b. Recursive call

The *recursive call* is basically a function call put on the function's last line. If the function returns something, the recursive call must be put in the return statement and the arguments must be changed.

```swift
// Example of a return recursion that sums downwards

func sumDownwards(_ x: Int) -> Int {
    if x == 0 {
        return 0
    }
    return x + sumDownwards(x-1)
}

print(sumDownwards(5))  // 15
print(sumDownwards(1))  // 1
```

### c. Implementation

Recursion has so many implementations. It is required in problems concerning data structures and advanced algorithms, such as Graph and Tree Traversal. However, it takes a lot of stack space and uses more processor time, so one may avoid using it. However, recursion is still cool, isn't it?

On the road to exploring recursion, let us make a function that calculates the factorial value of a number. For example, the factorial of 3 is 3! = 3 * 2 * 1 = 6. Because of that, we will use a base case that returns `1` when `num` equals `0`, and a recursive call of `num - 1`.

```swift
// Example of a recursive function calculating the the factorial value

func factorial(_ num: Int) -> Int {
  // Base case
  if num == 0 {
    return 1
  }
  // Recursive call
  return num * factorial(num - 1)
}

print("The factorial of 3 is", factorial(3))  // The factorial of 3 is 6
print("The factorial of 5 is", factorial(5))  // The factorial of 5 is 120
```

Taa daa! Our recursion works just in time for a break. After the break, we will move to something called `closure`.

<-- ## 6. Closures -->

## Demo Code
Above example codes are avaialable in the folder *Code* under the name [4-functions-and-closures.playground](../../../code/4-functions-and-closures.playground). For instruction to preview code directly on Github, please refer to this section on [Code Preview](../../../README.md/#code-preview).

## References
Inc., A. (2022). *Language Guide*. The Swift Programming Language (Swift 5.6). Retrieved March 25, 2022, from https://docs.swift.org/swift-book/LanguageGuide  
*Swift functions*. Programiz. (2022). Retrieved April 10, 2022, from https://www.programiz.com/swift-programming/functions  
