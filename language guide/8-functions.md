# Functions

A *function* is a reusable block of code that performs a specific task. There are two types of functions in Swift: user-defined and library-provided. As explained by their names, Swift's library already provides the latter, and the former has to be manually declared. 

Swift has no rule on where to place the function call and function declaration. It is similar to Java, so you can call the function before its declaration. Just reminds yourself that you have to declare it somewhere in the program. But how to declare and call a function? 

### Table of Content

1. [Function Declaration and Calling](#1-function-declaration-and-calling)   
2. [Return Values](#2-return-values)   
3. [Parameters](#3-parameters)   
4. [Arguments](#4-arguments)   
5. [Function Types](#5-function-types)   
6. [Library-provided Functions](#6-library-provided-functions)   
7. [Overloaded Functions](#7-overloaded-functions)   
8. [Nested Functions](#8-nested-functions)   

## 1. Function Declaration and Calling

Swift use `func` as a type keyword to declare a function. The full syntax is:

```swift
func functionName(name: type) -> returnType {
  // function body 
}
```

Below is an example of a function that inputs 2 numbers, multiplies them, and prints the output. The function does not return anything.

```swift
// Example of a function printing the multiplication of 2 input numbers

func multiply(num1: Int, num2: Int) {
    print(num1, "times", num2, "equals", num1 * num2)
}
```

Although the function's purpose is to print out an integer, you won't see anything number printed out to the console if you run the code. This is because we have not "called" the function. 

Due to its reusability, a function has to be called to be executed. The calling function, in fact, is easy and similar to that in other programming languages. The syntax is:

```swift
functionName(name: value)
```

By default, the number and the order of need-passed arguments are also those of parameters. Additionally, the argument's name and type must match the parameter's. Detailed information will be discussed more in the below section of [parameters](#3-parameters) & [arguments](#4-arguments).

Let's continue where we left. Below is the calling statement of the above-declared multiply function. Since the function requires 2 parameters: num1 and num2, we must give the calling statement 2 related arguments.

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

## 2. Return Values

*Return values* are the value that a function returns rather than doing other actions such as printing. Return values are extremely flexible in Swift as you can return nothing, one value, or multiple values.

```swift
// Example of a function with no return value

func multiply(num1: Int, num2: Int) {
    print(num1, "times", num2, "equals", num1 * num2)
}
```

> Strictly speaking, this type of function still returns a value, even though no return value is defined. Functions without a defined return type return a special value of type `Void`. This is simply an empty tuple, written as `()`.

If we want our function to return some value, we use the `return` statement and *return type*. A function with a defined return type can't allow control to fall out of the bottom of the function without returning a value, and attempting to do so will result in a compile-time error.

With *return values*, we can access and assign the result of the function to a variable in an outer scope. For example, we can modify the function `multiply()` above to return an Int rather than printing that Int out, then assigns the return value to a variable called `result`.

```swift
// Example of a function with one return value

func multiply(num1: Int, num2: Int) -> Int {
    return num1 * num2
}
var result = multiply(num1: 4, num2: 8)
print(result)           // 32
```

Quite a cheat but [`Tuple`](1-the-basics.md/#e-tuples) can be used as the *return type* to make a function to return multiple values as part of one compound return value. For example, instead of returning just the result, we will want to return all integers in the function `multiply()`.

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

As you can see above, a tuple-typed return value can have many variables of different primitive types. *Tuple* also allows optional binding, which can be used as a *return type* to reflect that the entire tuple can be nil. You write an optional tuple return type by placing a question mark after the tuple type's closing parenthesis, such as `(Int, Int)?` or `(String, Int, Bool)?`.

## 3. Parameters
### a. Parameters
A function parameter is a `name: type` value accepted by and got *passed by value* into a function. A function may or may not have input parameters. Let's see an example:

```swift
// Example of a function that takes in two parameters and sums them up
// Source: Programiz

func addNumbers(a: Int, b: Int) {
  let sum = a + b
  print("Sum:", sum)
}

addNumbers(a: 2, b: 3)        // Sum: 5
```

In the above example, the function `addNumbers()` takes two parameters: `a` and `b`. In the calling statement, `a: 2, b: 3` specifies that parameters `a` and `b` will get values 2 and 3 respectively. And those values (`2` and `3`) are called [*arguments*](#4-arguments).

In some cases, a function can have default parameter values to omit that parameter when calling the function. The default parameter value is defined by assigning a value to the parameter after that parameter's type. For example:

```swift
// Example of a function that takes in two parameters and sums them up

func addNumbers(a: Int = 0, b: Int = 0) {
  let sum = a + b
  print("Sum:", sum)
}

addNumbers(a: 2, b: 3)           // Sum: 5
addNumbers()                     // Sum: 0
```

Since parameters are pass-by-value, Swift makes it a let constant within the function's scope to prevent any changes. For example, both the input list and input list's elements are *immutable*.

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

### b. In-out Parameters

Although parameters in Swift are *pass-by-value*, the default characteristic of the parameter can be changed into *pass-by-reference* by using *in-out parameter*.

> Pass by value means that a copy of the variable's value is passed into the function. Any change made to the parameter variable is *invisible* to the caller's variable. For example, Java method is passed by value.
> 
> Pass by reference means to pass the address of the variable into the function. If the callee modifies the parameter variable, the effect is *visible* to the caller's variable. For example, C supports pass by reference.

An *in-out parameter* is passed *in* to the function, modified by the function, and passed *out* of the function to replace the original value. 

To write an *in-out parameter*, place the `inout` keyword right before a parameter's type and an ampersand `&` directly before the argument variable's name.

Here's an example of a function called `swap()` that swaps two in-out integer parameters:

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

However, there are some limitations of inout parameters. You can only pass a variable as the argument for an in-out parameter. You can't pass a constant or a literal value as the argument because constants and literals can't be modified. This example will prompt a compile-time error message:

```swift
swap(&7, &8)           // error: cannot pass immutable value
```

## 4. Arguments

The argument label is used when calling the function. Each argument is written in the function call with its argument label. By default, parameters use their parameter name as their argument label. However, one may want to specify the argument labels.

In that case, you write an argument label before the parameter name, separated by a space. If you have an argument label, you will have to refer to it when calling the function. For example:

```swift
// Example of a function with argument labels

var someNum = 3
var anotherNum = 107
func swap(firstSwap a: inout Int, secondSwap b: inout Int) {
    let temporary = a
    a = b
    b = temporary
}
swap(firstSwap: someNum, secondSwap: anotherNum)
```

If you don't want an argument label for a parameter, write an underscore `_` instead of an explicit argument label for that parameter. Then you can omit the argument label when calling the function. 

```swift
// Example of a function with omitted argument label

var someNum = 3
var anotherNum = 107
func swap(_ a: inout Int, _ b: inout Int) {
    let temporary = a
    a = b
    b = temporary
}
swap(&someNum, &anotherNum)
```

## 5. Function Types

Every function has a specific *function type*, made up of the parameter types and the return type of the function. For example, we have two functions as below:

```swift
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
```

The type of both of these functions is `(Int, Int) -> Int`. This can be read as "a function with two parameters, both of type `Int`, and that returns an `Int`-typed value.”

## 6. Library-provided Functions

Besides the user-declared function, we also have another type called *library-provided function* (also called standard library functions). Basically, it is a function that can be used directly in the program without declaration. Some common ones are: `print()`, `sqrt()`, and `pow()`.

Most *library-provided functions* are defined inside a framework, which requires a manual import to the program. For example, `sqrt()` and `pow()` are defined inside the `Foundation` framework, so the `Foundation` framework must be imported before any built-in function calls. 

Below is the example of importing a library and calling its built-in functions:

```swift
// Example of a function that splits a string into two substrings using a library-provided function

import Foundation

let hello = "Hello, World!"
func stringSpliting (_ str: String) -> (String, String) {
    let result = str.components(separatedBy: " ")
    return (result[0], result[1])
}
let (hello1, hello2) = stringSpliting(hello)
print(hello2, hello1)      // World! Hello,
```

## 7. Overloaded Functions

Although the function's name has to be distinct, as stated above, two or more functions may share a name if they differ in parameters. These types of functions are called *overloaded functions*. And based on the number of arguments passed during the function call, the corresponding function is called.

For example, we can alter the above `multiply()` function to accept different types and numbers of parameters.

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

As you can see above, *overloaded functions* may have the same or different return types, but they must differ in parameters. Since parameter and return type can extensively affect the return value, one must be careful when using *overloading*.

## 8. Nested Functions
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

We can also have a function being the return value of a function. This is called *enclosing function*. 

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
Since this matches the function definition of inner functions, the outer function returns one of the inner functions. For example, when we call `funcAorB()` function, it will return either `funcA()` or `funcB()`; and we can use this return value as a function.

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
