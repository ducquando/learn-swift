# learn-swift

A guidance project on using Swift from CS308 Programming Languages at Fulbright University Vietnam
  
## General Information

Swift was *created on December 3, 2015, by Apple* in an attempt to replace the old-dying Objective-C for its application development purpose. However, in Stack Overflow's 2021 developer survey, only 5% of the community uses Swift regularly, which is a tiny percentage.

So, why learn Swift? If you are looking for an easy, interacting but powerful programming language, Swift is the right choice. Apple even advertises that anyone, even children having no experience with coding, can learn it. However, if you want to become an Apple developer, learning Swift is necessary.

Apple also creates a paired compiler to run Swift code called Xcode. You may find Xcode hard to use at first, but it will become much easier and more powerful when it continues being used. Additionally, SwiftUI, an UI development tool integrated into Xcode, is made in a way that runs and previews the code's result directly on an Apple device instead of a console or pop-up window like Python does.

There are many resources for developers who are investigating Swift, such as:

- [The Swift programming language](https://docs.swift.org/swift-book/) for a comprehensive language guide
- [Swift Playground](https://developer.apple.com/swift-playgrounds/) for interacting lessons on building apps using Swift
- [Swift Documentation](https://developer.apple.com/documentation/swift) for detailed documentation
- [Apple's GitHub](https://github.com/apple) for public source code


## Getting Started

Let's get the ball rolling, aren't we?
To code in Swift, you have to:

  1. Have a Mac (Swift cannot be run from a Window or Linux device)
  2. Have an Apple ID. If you have not created one, please visit [Apple ID](https://appleid.apple.com) and click on *Create Your Apple ID* on the top right of the screen to create an Apple ID. 
  3. Install [Xcode](https://developer.apple.com/xcode/) on your Mac (once again, Xcode is an Apple-developed compiler for Swift). On the site, you will find that there are 2 downloading options: *Download from Website* and *Download from Mac App Store*. For the beginner, I'd recommend you choose the latter (*Download from Mac App Store*) for convenience as it will install the newest version and all necessary tools. But if you want to choose the version (including both official and beta versions) of Xcode and manually install the additional tool, choose *Download from Website*. To be clear, the version I use for this tutorial is 13.2.1.<sup>1</sup>
  4. [optional] Clone this repository. The folder *Demo Code* provides many Swift codes shown in this guide for you to play around with. You may use Xcode to run the playground files. For instructions to preview code directly on Github, please refer to this section on [Code Preview](#code-preview)
  
Once you have done all steps, you are ready to begin.

<sup>1</sup> For more instructions on installing and running Xcode, please visit [Apple Developer: Xcode](https://developer.apple.com/documentation/xcode).

## Language Guide

### A. The Basics
***
#### 1. "Hello, world!"

Printing in Swift is easy as it can be done with just one line of code, which is `print()`. Including the semi-colon `;` at the end of each code line is unnecessary. But you can do that if your want to.

The syntax below will print the phrase "Hello, world!" to the console on separate lines.

```swift
print("Hello, world!")
print("Hello, world!");
```

You can also print other things, like a number or a result of a mathematic calculation, out to the console. The example below will print 2 and 12, respectively, to the console.

```swift
print(2)
print(10+2)
```

#### 2. Commenting

There are 2 types of comments in Swift: single-line and multi-line. Single-line comments are often used to explain the logic of a code, and multi-line comments are used to describe a whole set of code.

- For single-line comments, use `//` to comment out all the texts that appeared behind it on that line. For example:

```swift
// This is a comment
print("some texts") // This is another comment
```

- For multi-line comments, you have to indicate the beginning (marked with `/*`) and the ending (marked with `*/`) of the comment. For example:

```swift
/* This is another comment,
but it spreads over many lines
*/
```

While single-line comments are most used for code explanation, multi-line comments are used for code documentation.

#### 3. Data Types

Swift provides its version of all fundamental C (and Objective-C) data types such as Integer, Double, Float, Boolean, and String. Swift also has powerful versions of the three primary collection types: Array, Set, and Dictionary. In addition, it also has new data types called Optional, Tuple, etc. 

If you are ready, let's dig down on each data type. Please note, in Swift, data types are always written in the Pascal case (e.g., Int).

##### a. Integers

*Integers* are whole numbers with no fractional component, such as 42 and -23. 

In Swift, there are two types of integers: `Int` and `UInt`. While Int is a signed number (positive, zero, or negative), UInt is an unsigned one (only positive or zero). Also, Int and UInt are provided in 8, 16, 32, and 64-bit forms and follow a naming convention in which an 8-bit unsigned integer is of type `UInt8`, and a 32-bit signed integer is of type `Int32`. However, in most cases, you don't have to pick a specific integer size in your code, as Swift will do that for you. You can check the number range with `.min` and `.max`.

##### b. Floating-point Numbers

*Floating-point numbers* are numbers with a fractional component, such as 3.14159, 0.1, and -273.15.

In Swift, there are two floating-point number types: `Double` and `Float`. While Double represents a 64-bit floating-point number, Float only represents a 32-bit one. Therefore, Double is preferred since it has a precision of at least 15 decimal digits, compared to Float with 6 decimal digits. 

##### c. Booleans

*Boolean* values are considered logical because they can only ever be true or false. Swift provides two and only two `Bool` constant values: `true` and `false`. Any non-Boolean values cannot be substituted for Bool.

For example, `True`, even though it looks like `true`, is not a valid Bool type in Swift. Moreover, while some languages such as Python and JavaScript interpret `0` as `false` and other integers as `true`, Swift prevents this. In fact, it will prompt a compile-time error if someone tries to do that.

##### d. Strings and Characters

A *String* is a series of characters, such as "hello, world" or "albatross". The contents of a `String` can be accessed in various ways, including as a collection of `Character` values. 

You can include predefined String values within your code as string literals and multiline string literals. While a string literal is a sequence of characters surrounded by double quotation marks `"`, a multiline string literal is a sequence of several-line-spanned characters surrounded by three double quotation marks `"""` with a line break.

##### e. Tuples

*Tuples* group multiple values into a single compound value. The values within a tuple can be of any type and don't have to be of the same kind. You can create tuples from any permutation of kinds, and they can contain as many different kinds as you like. Nothing stops you from having a tuple of type `(Int, Int, Int)`, `(String, Bool)`, or any other permutation you require.

##### f. Optionals

You use *Optionals* in situations where a value may be absent. An optional represents two possibilities: Either there is a value, which you can unwrap the optional to access that value, or there isn't a value. Optional is indicated by the question mark `?` followed after a data type. You can also find Optional in the explicit conversion of unrelated data types.

##### g. Arrays

*Array* is one of the primary Collection types for storing collections of values. Array stores values of the same type in an ordered list. The exact value can appear in an array multiple times at different positions. 

The type of an Array is written in full as `Array<Element>`, where `Element` is the type of values the array is allowed to store. You can also write an array's type in shorthand form as `[Element]`, preferable.

##### h. Sets

Like Array, *Set* is another primary collection type for storing collections of values. Set holds distinct values of the same kind in a Collection with *no defined ordering*. You can use a Set instead of an array when the order of items isn't essential or when you need to ensure that a thing only appears once.

The Set type is written as `Set<Element>`, where `Element` is the type that the set is allowed to store. Unlike arrays, Sets don't have an equivalent shorthand form.

##### i. Dictionaries

*Dictionary* is the last one of the 3 primary Collection types for storing collections of values. Dictionary stores associations between keys of the same type and values in a Collection with *no defined ordering*. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary.

The type of a Dictionary is written in full as `Dictionary<Key, Value>`, where `Key` is the type of value that can be used as a dictionary key, and `Value` is the type of value that the dictionary stores for those keys. You can also write the kind of a dictionary in shorthand form as `[Key: Value]`, which is preferable.

##### k. Pointers

If you have experience with any C-related programming languages, you may know that these languages use pointers to refer to addresses in memory. Although Swift does not support direct pointer, it offers an indirect way using reference types.

#### 4. Data Binding

Swift **binds data types at compile time**, whichProperty Accessment makes it a type-safe programming language. In the following sections, you will see more about the applications of this type-safe characteristic.

### B. Constants and Variables

***

Swift uses variables and constants to store and refer to values by an identifying name. While the value of a constant can't be changed once it's set, a variable can be set to a different value in the future. In other words, anything declared as a variable is *mutable* (can add, remove, or change after declaration). Oppositely, anything declared as a constant is *immutable* (cannot do anything with it after declaration).

#### 1. Naming Convention

For Swift, constant and variable names can contain almost any character except whitespace, mathematical symbols, arrows, private-use Unicode scalar values, or line-and box-drawing characters. This means that even pictographs like emoji `💪` and logographs like Chinese `大` are legal variable/constant names.

However, for universal development, we should use the Unicode character. As noted in Swift 3.0 documentation, any Unicode variables/constants should be named in camelCase like `firstVariable`.

One more thing to remember, although numbers may be included elsewhere within the name, a variable/constant cannot begin with a number. For example, `the1stVarible` is a legal name for variable and constant, but `1stvariable` is not.

#### 2. Declaring Syntax
##### a. Declaration and Initialization

Constants and variables must be declared and initialized before they're used. You declare constants with the `let` keyword and variables with the `var` keyword, followed by a variable name, equal sign `=`, and the assigning value.

The example below will declare name as a variable and age as a constant. 

```swift
// Example of variable and constant declaration
var name = "User"    
let age = "10"
```

> If a stored value in your code won't change, always declare it as a constant. Use variables only for storing values that need to be able to change.

If you want to declare multiple constants/variables simultaneously, you can do it on the same line by using commas `,` to separate them. The data types of these constants/variables and be mixed. For example, we can declare variables name and age simultaneously, although name is a String and age is an Integer.

```swift
// Example of a multi-variable declaration of different types

var name = "User", age = 20
```

Since most types in Swift are value types, we actually make a copy of the assigning value and pass it into the assigned variable/constant when declaring or changing a variable/constant. Therefore, the changing value of the former does not affect the assigned variable. For example:

```swift
// Example of variable assignment's nature

var name = "User"    
var user = name
name = "Do Duc Quan"
print(user)         // "User"
```

Finally, you cannot declare a variable without the initialized value. For example:

```swift
var name   // error: unexpected pattern
```


##### b. Type Annotation

In Swift, there are 2 ways of annotating data types: **implicit** and **explicit**. While implicit annotation means the compiler will do the job for you, explicit annotation requires manual data type specification. Nevertheless, either way will **specify data type strongly and statically**. This means you cannot change it after declaration unless using an explicit conversion of the related type.

For now, let's focus on type annotation only. As you see in many examples above, Swift has implicitly declared the data type for you. However, you can explicitly annotate the data types, and your type annotations will override the default one. To explicitly declare a variable/constant's type, you use a colon `:` after the variable/constant's name, following with a space and the name of the type to use. Another way is to put the data type and wrap the content inside a parentheses `Int(something)`.

```swift
// Example of an explicit type annotation and type conversion 

var welcomeMessage: String = "Welcome"
var age = Int("20") // 20
```

Moreover, you can set a variable with `nil` value by explicitly annotating the Optionals type (putting the question mark `?` after the associated data type). You can also assign the value `nil` (meaning no value) to the variable, yet this step is optional. This is called [Optional Binding Declaration](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html#ID333).

```swift
// Example of optional binding declaration

var name : String?     // Set name to either have a value or not at all
var age : Int? = nil   // This is equivalent to the first line
```

### C. Basic Operators

***

#### 1. Assignment

The *assignment operator* `=` assigns the value of the left side with the value of the right side. You can use the assignment operator to initialize variable/constant.

```swift
// Example of a variable assignment

var name = "Do Duc Quan"
var user = name    // initialize user with name, whose value is "Do Duc Quan"
```

For Tuple, you must have an equal number of values on both sides. For example:
```swift
// Example of a Tuple constant assignment

let (x, y) = (1, 2)
print(x)   // 1
print(y)   // 2
```

You can also change the value of a variable after declaration. The only condition is that the new value's type must match the old one. For example:

```swift
// Example of correct variable reassignment
var user = "User"
var name = "Do Duc Quan"
user = name    // re-assign a with b, whose value is "Do Duc Quan"
print(user)    // "Do Duc Quan"

// Example of incorrect variable reassignment
var age = 20
user = age // error: cannot assign value of type Int to type String
```

If you want to reassign a corresponding data type value to a variable, you must use explicit conversion. But, if you try to use explicit conversion on an Optional unrelated data type, the variable will return to the original value. For example:

```swift
// Example of correct and incorrect explicitly converted reassignment

var user = "User"
user = String(20)    // name now holds the string "20"
var age : Int? = 20
age = Int("User")    // name now holds nil value since cannot convert String "User" into Int.
```

As said before, you cannot change the value of a constant. For example:

```swift
let age = 10
age = 20   // error: cannot assign value because 'age' is a constant
```

And unlike that of its predecessor Objective-C, Swift's assignment operator does not return a value.

#### 2. Arithmetic

Swift supports the standard arithmetic operators for all number types: addition `+`, subtraction `-`, multiplication `*`, division `/`, and remainder`%`.

However, the result of the calculation differs for each data type. This is because Swift is a strong language that prevents data type from changing unless by explicit conversion. As a result, the result of a binary integer calculation is always an integer. The same rule is applied to Double and Float binary calculation. Additionally, Swift restricts any arithmetic operator on different data types. For example:

```swift
// Example of correct and incorrect arithmetic operators

var ageInt = 20
var decadeInt = 12
var ageDouble : Double = 20
var decadeDouble = Double(decadeInt)

print(ageInt / decadeInt)       // 1
print(ageDouble / decadeDouble) // 1.66667
print(ageDouble / decadeInt)    // error: binary operator cannot be applied to Double and Int 
```

The addition operator is also supported for String concatenation:

```swift
// Example of a String concatenation using addition operator

var greeting = "hello, "
greeting = greeting + "world"
print(greeting)   // "hello, world"
```

#### 3. Compound Assignment

A compound assignment operator is an operator that combines assignment `=` with another operation. One example is the addition assignment operator `+=`.

```swift
// Example of a String concatenation using compound addition operator

var greeting = "hello, "
greeting += "world"
print(greeting)  // "hello, world"
```
In the example above, the expression `greeting += "world"` is shorthand for `greeting = greeting + "world"`. Effectively, the addition and the assignment are combined into one operator that performs both tasks simultaneously time.

And similar to the assignment operator, the compound assignment operator doesn't return a value. 

#### 4. Comparison

Swift supports many comparison operators, including:

- Equal `==` and Unequal `!=`
- Identical `===` and Unidentical `!==`
- Greater than `>` and Less than `<`
- Greater than or equal `>=` and Less than or equal `<=`
- and Pattern match `~=`

Each of the above comparison operators returns a Bool value to indicate whether or not the statement is true. For example:

```swift
// Examples of comparison operators

1 == 1   // true 
2 != 1   // true 
2 > 1    // true
2 <= 1   // false 
```

#### 5. Logical

Logical operators modify or combine the Boolean logic values true and false. Swift supports the three standard logical operators:

- NOT `!` inverts a Boolean value (`true` becomes `false`, and vice versa).
- AND `&&` creates logical expressions where both values must be `true` for the overall expression to also be `true`.
- OR `||` creates logical expressions in which only one of the two values has to be `true` for the overall expression to be `true`.

You can combine multiple logical operators. However, they are left-associative, meaning compound expression with multiple logical operators evaluates the leftmost subexpression first. For example, `true || true && false` means `false`. However, we should add the parenthesis `()` in that case for easier code reading.

```swift
// Examples of logical operators on boolean

print(true || true && false)    // false
// That equals to:
print((true || true) && false)  // false
// And also equals to:
print((true || true) && !true)    // false
// But not equals to:
print(true || (true && false))  // true
```

On top of that, logical operators use [short-circuit evaluation](#d-short-circuit-evaluation) to consider its expressions, allowing one to write dirty code without being reported by the compiler.

#### 6. Range
Swift includes several range operators, which are shortcuts for expressing a range of values and can be characterized as:

- Closed `...` or Half-Opened `..<`
- Two-Sided `a  b` or One-Sided `a`,`b`

##### a. Closed and Half-Opened

<table>
<thead>
  <tr>
    <th>Closed</th>
    <th>Half-Opened</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td colspan="2">Defines a range that runs from first value to last value. The first value must not be greater than the last value</td>
  </tr>
  <tr>
    <td>...</td>
    <td>..&lt;</td>
  </tr>
  <tr>
    <td>includes both first and last value</td>
    <td>include first value but exclude last value </td>
  </tr>
</tbody>
</table>

##### b. Two-Sided and One-Sided

| Two-Sided | One-Sided |
| --- | --- |
| `a..b` | `a..` `..b` |
| limited in two directions | limited in one direction and continue as far as possible in the other |

##### c. Full version

When declaring a range operator, you must pick one from every two groups above. For example, a range operator can be closed and two-sided or half-opened and one-sided. Below are some examples of range operators.

```swift
..<2     // [...,-2,-1,0,1]
2...     // [2,3,4,5,6,7,...]
2..<6    // [2,3,4,5]
2...6    // [2,3,4,5,6]
```

### D. Short-circuit Evaluation

***

*Short-circuiting* is a programming concept by which the compiler skips the execution or evaluation of some sub-expressions in a logical expression. The compiler stops evaluating the further sub-expressions as soon as the value of the expression is determined.

Specifically, if the first expression fixes the overall result (e.g. `true || ...`, `false && ...`), there is no need to execute other expressions. Additionally, the parenthesis `()` does not prevent short-circuit from happening. For example, `true || (true && false)` will short-circuit as true because the leftmost value is `true`, so there is no need to evaluate the rest.

Short-circuit is used to optimize run time, yet it may cause confusion if another expression is a dirty code or a supposed-to-run function. There are few clear cases of dirty code that Swift can catch during compile time, yet most cases will not be detected. For instance, you cannot run the following codes:

```swift
// Example of dirty codes caught in compile time

print(true || ("dar" == 9))   // error: cannot compare String with Int
print(true || 9 / 0 == 0)     // error: cannot divide by 0
```

However, the following code will be run successfully, which may lead to program vulnerability.

```swift
// Example of dirty codes NOT caught because of short-circuiting

var zero = 0
print(true || 9 / zero == 0)     // true
```

As you can see, the program will print out "true" and won't report any error in the code. This is because the above code is not lexically wrong, so it will be passed to run time without being caught in the compile time. The code will be short-circuited in run time, leading to the error never being reported. Therefore, one must be very careful of short-circuiting in any form.

### E. Selection Statements

***

In Swift, there are three ways to add conditional branches to your code: `if`, `switch`, and `guard`.

#### 1. If

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

Like logical statement, Swift also uses [short circuit](#d-short-circuit-evaluation) on `if-elseif-else` statement. It means that Swift checks the conditions from top-down, the code block of the met condition is executed, and the rest code block will be ignored.

#### 2. Switch

A `switch` statement allows certain code blocks to be executed depending on the value of a control expression. The control expression of the `switch` statement is evaluated and then compared with the patterns specified in each case. If a match is found, the program executes *only* the statements listed within the scope of that case. It will not allow implicit fallthrough. However, if you want to have a fallthrough in `switch`, you can explicitly tell Switch to do by using a control transfer statement called [`fallthrough`](#g-control-transfer-statements).

Unlike other languages, the values of expressions your code can branch on are very flexible. Floating-point numbers, strings, tuples, instances of custom classes, and Optionals are valid expression values. Moreover, you can use value binding `let x = ...` along with the `where` clause to match some specific values. Furthermore, the underscore character `_`, also known as the wildcard pattern, is used to match *any possible value*. 

Same as `if`, `switch` also allows compound case by writing several patterns after case, with a comma between each pattern. If any of the patterns match, the case is considered to match. Chained `switch` also shares the same behavior of `if` statement, which uses [short-circuit evaluation](#d-short-circuit-evaluation).

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

#### 3. Guard

The `guard` statement is the opposite of the `if` statement. It executes statements depending on the Boolean value of an expression. 

Although it uses the same method as `if` (executing the code if the condition is true), it is normally used to execute a code block inside the `else` branch if the condition is `false`. And the condition is normally an optional binding that returns `true` or `false` given the value's existence. Like the `if` statement, `guard` also accepts constant declaration as a condition.

Furthermore,` guard` is typically used inside a function or an iteration. As a result, a `guard` statement always has an `else` clause which includes a [control transfer statement](#g-control-transfer-statements) such as `return`, `continue`, and `throw` to exit the function/iteration.

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

### F. Iteration Statements

***

There are two main types of iteration in Swift: `while` loop and `for-in` loop. While a `while` loop is used when we don't know the number of iterations before the first iteration begins, a `for-in` loop is used when we want to iterate a specific Sequence.

#### 1. While loop

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

#### 2. For-in loop

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

### G. Control Transfer Statements

***

Control transfer statements change the order in which your code is executed by transferring control from one piece of code to another. Swift has three important control transfer statements: `continue`, `break`, and `fallthrough` related to the control flow structures.

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

### H. Functions

***

A *function* is a reusable block of code that performs a specific task. There are two types of functions in Swift: user-defined and library-provided. As explained by their names, Swift's library already provides the latter, and the former has to be manually declared. 

Swift has no rule on where to place the function call and function declaration. It is similar to Java, so you can call the function before its declaration. Just reminds yourself that you have to declare it somewhere in the program. But how to declare and call a function? 

#### 1. Function Declaration and Calling

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

By default, the number and the order of need-passed arguments are also those of parameters. Additionally, the argument's name and type must match the parameter's. Detailed information will be discussed more in the below section of [parameters & arguments](#3-parameters-and-arguments).

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

#### 2. Return Values

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

Quite a cheat but [`Tuple`](#e-tuples) can be used as the *return type* to make a function to return multiple values as part of one compound return value. For example, instead of returning just the result, we will want to return all integers in the function `multiply()`.

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

#### 3. Parameters and Arguments
##### a. Parameters
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

In the above example, the function `addNumbers()` takes two parameters: `a` and `b`. In the calling statement, `a: 2, b: 3` specifies that parameters `a` and `b` will get values 2 and 3 respectively. And those values (`2` and `3`) are called [*arguments*](#b-arguments).

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

##### b. In-out Parameters

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

##### c. Arguments

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

#### 4. Function Types

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

#### 5. Library-provided Functions

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

#### 6. Overloaded Functions

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

#### 7. Nested Functions
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

### I. Recursions

*Recursion* is a common technique in programming that makes a function call itself. A recursion must include a base case and a recursive call, which is reflected in the below recursive function's skeleton.

```swift
// Skeleton of recursion

func recurse() {
    base case
    
    recurse()
}
```
#### 1. Base case

*Base case* is a name for the recursion's stopping condition. If there isn't any stopping condition, the function will keep calling itself infinitely. One simple way to implement the base case is to use an `if` statement as below:
 
```swift
// Skeleton of recursion

func recurse() {
   if num == 0 {
    	return 1
  	}
    	
    recurse()
}
```

#### 2. Recursive call

The *recursive call* is basically a function call put on the function's last line. If the function returns something, the recursive call must be put in the return statement, and the arguments must be changed.

```swift
// Example of a recursive function calculating the factorial value

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

In the above example, we use a base case that returns `1` when `num` equals `0`, and a recursive call of `num - 1` to resemble the factorial equation's behavior.

### K. Instances

Like Objective-C, Swift extensively supports object-oriented programming by giving not only one but two types, which are *structure* and *class*.

> Typically, an *instance* of a class is called *object*. However, the more general term *instance* is used since Swift supports structures and classes. 

Unlike other programming languages, Swift doesn't require creating separate interface and implementation files for custom instances. In Swift, you define a structure or class in a single file, and the external interface to that class or structure is automatically made available for other code to use.

#### 1. Structures
##### a. Definition

A *structure* (also called *struct*) stores variables of different data types that relate to each other. To define a struct, you give it a keyword `struct`, followed by a `StructName` in CamelCase, then a *struct body* wrapped in a closure `{}`.

```swift
// Example of a struct definition

struct Male {
  var name = ""
  var age = 0
  let gender = "male"
}
```

> Whenever you define a new structure or class, you define a new Swift type. Notice some primitive types (e.g., Int, String) also written in CamelCase? This is because they are Swift-provided structures. For verification, the Int structure is available on [Apple Developer: Int](https://developer.apple.com/documentation/swift/int/2995648-random).

##### b. Instancing

A struct definition is just a blueprint. To use a struct, we need to create an instance of it. 

```swift
// Examples of the Male struct's instance creating statement

var person1 = Male()
let person2 = Male()
```

##### c. Property Access

There are three variables in the above Male struct's body: name, age, and gender. When defined within a struct, those variables are called [*properties*](#3-properties). We use the dot `.` symbol to access an instance's property.

```swift
// Examples of person1's property access

var firstAge = person1.age
var firstGender = person1.gender
```

##### d. A Value Type

Moreover, structure is a value type whose value is copied when assigned to a variable or constant or passed to a function. Therefore, a structure instance's modification affects neither the structure itself nor other instances of that structure. Furthermore, the structure's properties are also value types.

```swift
// Examples of structure and struct's property being value type

var person1 = Male()
var person2 = person1

// When assigned a new value to the variable holding the property,When assigned a new value to the variable holding the property, that and other properties aren't affected
var firstAge = person1.age
firstAge = 30
print(firstAge, person1.age, person2.age)    // 30 0 0

var firstGender = person1.gender
firstGender = "female"
print(firstGender, person1.gender)           // female male

// When assigned a new value to the property, related variables isn't affected
firstAge = person1.age
person1.age = 80
print(firstAge, person1.age, person2.age)    // 0 80 0
person2.age = 60
print(firstAge, person1.age, person2.age)    // 0 80 60

// The structure Male isn't affected
var person3 = Male()
person3.gender = "female"
print(firstAge, person1.age, person2.age, person3.age)    // 0 80 60 0
```

#### 2. Classes
##### a. Definition

Besides structure, Swift has another type called *class*. Class is made as an extended version of structure, which is originally quite functional, to capture all object-oriented features. Consequently, class inherits all the capability of structure, plus additional ones such as *inheritance*, *typecasting*, *deinitialization*, and *multi-references*.

Great power comes with great responsibility. Only use class when necessary. Otherwise, use structure.

Defining a class is similar to a structure except for the keyword changing into `class`. 

```swift
// Example of a class definition

class Female {
  var name = ""
  var age = 0
  let gender = "female"
}
```

##### b. Instancing and Property Access

The same as structure, you have to manually "instance" a class to use.

```swift
// Examples of the Female class's instance creating statement

var person1 = Female()
let person2 = Female()
```

You can also access its [properties](#3-properties) with the dot `.` symbol.

```swift
// Examples of person1's property access

var firstAge = person1.age
var firstGender = person1.gender
```

##### c. A Reference Type

Unlike structure, class is a reference type, which refers directly to assigning one instead of making copies. In other words, instances of a class are actually different alias. As a result, a modification in one instance will affect other instances. However, the class itself is immune from the change. Moreover, instance's properties are actually value types, so they are also unaffected. Below are examples to visualize the above behaviors.

```swift
// Examples of class being reference type and class's instance being value type

var person1 = Female()
var person2 = person1

// When assigned a new value to the variable holding the property, that and other properties aren't affected
var firstAge = person1.age
firstAge = 30
print(firstAge, person1.age, person2.age)    // 30 0 0   - person1 and person2 aren't affected

var firstGender = person1.gender
firstGender = "male"
print(firstGender, person1.gender)           // male female

// When assigned a new value to a property, related instances' property also changed. However, assigned variable isn't affected by the alteration.
firstAge = person1.age
person1.age = 80
print(firstAge, person1.age, person2.age)    // 0 80 80  - firstAge isn't affected
person2.age = 60
print(firstAge, person1.age, person2.age)    // 0 60 60

// The structure class Female isn't affected
var person3 = Female()
print(firstAge, person1.age, person2.age, person3.age)    // 0 60 60 0
```

#### 3. Properties

Properties are variables and constants that associate with a particular class or structure. There are two main types of properties in Swift: type and instance. While type properties refer to the type itself, instance properties are associated with instances of a particular type. Instance properties even have two sub-types called stored properties and computed properties, and stored properties also have a lazy and a non-lazy one.

Below are the definitions and examples of those types of properties.

Properties | Definition | Example of Instance type | Example of Type type
---|---|---|---
Non-lazy stored properties | A constant or variable that's stored as part of an instance | `struct X { var firstValue: Int }` | `struct X { static var firstValue: Int }` 
Lazy stored properties | A stored property whose initial value isn't calculated until the first time it's used | `struct X { lazy var importer = DataImporter() }` | `struct X { lazy static var importer = DataImporter() }`
Computed properties | Provide a getter and an optional setter to retrieve and set other properties and values indirectly | `struct X { var center: Double { get {...} set{...} }` or `struct X { var center: Double { return ... } }` | `class X { static var center: Double { get {...} set{...} }` or `class X { class var center: Double { return ... } }`

More information about properties can be found on [Swift book: Properties](https://docs.swift.org/swift-book/LanguageGuide/Properties.html).

#### 4. Methods
Methods are functions that are associated with a particular type. Both class and structure can contain methods in their body. 

> A major difference from C and Objective-C is that structures in Swift can define methods. 

##### a. Instance Methods

*Instance methods* are functions that belong to a particular class or structure's instances. Instance methods have exactly the same syntax as [functions](#h-functions) and are written in the belonging type's body.

```swift
// Examples of defining instance methods

struct StudentAppointmentStruct {
    var appointment : String?
    mutating func makeAppointment() {
        let appointment = "Wed"
        self.appointment = appointment
    }
    mutating func makeAppointment(_ dayInWeek: String) {
        appointment = dayInWeek
    }
}

class StudentAppointmentClass {
    var appointment : String?
    func makeAppointment() {
        let appointment = "Wed"
        self.appointment = appointment
    }
    func makeAppointment(_ dayInWeek: String) {
        appointment = dayInWeek
    }
}
```

In the above example, we implement the student appointment on different types. Because structures are value types, the properties can't be modified from within its instance methods by default. If we want that method to modify the structure's attribute, we must explicitly set its method to `mutating`. In the case of class, this keyword can (in fact, must) opt-out because class is a reference type.

Moreover, we can use `self` to refer to the struct/class's properties. It is useful when we declare a variable that shares the same name as a property in a function. Otherwise, you don't have to explicitly write it since Swift will automatically do that in the background.

Furthermore, we have to make an instance of the class to use the instance methods. An instance method can be called only on a specific instance of the type it belongs to. It can't be called in isolation without an existing instance.

```swift
// Examples of making and calling instance methods

var student1 = StudentAppointmentStruct()
var student2 = StudentAppointmentClass()

student1.makeAppointment()
student2.makeAppointment("Mon")
print(student1.appointment!, student2.appointment!)   // Wed Mon
```

##### b. Type Methods

While instance methods belong to instances, *type methods* are functions that belong to a class or struct. Type methods are indicated by the keyword `static` for struct and `class` for class before the method's `func` keyword.

```swift
// Examples of defining type methods

struct StudentAppointmentStruct {
	static func test() {
		print("Struct's type method successfully printed")
	}
}
class StudentAppointmentClass {
	class func test() {
		print("Class's type method successfully printed")
	}
}
```

Like instance methods, type methods are called with the dot `.` syntax. However, you call type methods on the type, not on an instance of that type. Additionally, type methods can only access type properties, and instance methods can only access instance properties.


```swift
// Examples of calling type methods

StudentAppointmentClass.test()    // Class's type method successfully printed
StudentAppointmentStruct.test()   // Struct's type method successfully printed
```

##### c. Built-in functions

As said before, all primitive types such as String and Boolean are structures. Because of that, Int(4) means 4, and we can print it out to verify.

```swift
print(Int(4))        // 4
print(Int(4) - 4)    // 0
```

It is because primitives like Int can be printed directly through the universal `print()` function. However, we still get a result when we try to print out `student1`, which is an instance of our own StudentAppointmentStruct structure. Why? 

```swift
print(student1)
// StudentAppointmentStruct(appointment: Optional("Wed"))
```

Simple, it is because there is also another built-in function called `_adHocPrint_unlocked()` that tries to print out the values indirectly. The function can be found on Swift's source code under the file [OutputStream.swift](https://github.com/apple/swift/blob/main/stdlib/public/core/OutputStream.swift). However, if you really open the file and look for the function, you will find that it is not a global function. In fact, it uses switch and enumeration to handle some possible cases.

#### 5. Initialization

*Initialization* is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization required before the new instance is ready for use.

##### a. Default initializers

Default initializers provide default values for a new instance's properties. So far, we have extensively used default initializers to set up class and structure properties. The below example illustrates a default init for the StudentAppointmentStruct and StudentAppointmentClass.

```swift
// Example of default initailizers for class and struct

struct StudentAppointmentStruct {
    var age = 18
struct StudentAppointmentClass {
    let age = 18
```

##### b. Memberwise Initializers

The *memberwise initializer* is a shorthand way to initialize the member properties of new structure instances. Initial values for the properties of the new instance can be passed to the memberwise initializer by name.

> Memberwise initializer only works for Structure type

```swift
// Example of initializing optional properties using memberwise initializers

struct StudentAppointmentStruct {
	var grade : Double?
}
var student = StudentAppointmentStruct(grade: 9.8)
print(student.grade!)       // 9.8
```

When you call a memberwise initializer, you can omit values for any properties that have default values. In fact, if you use a memberwise initializer on any default-value property, that value will be replaced by the memberwise's one.

```swift
// Example of initializing default properties using memberwise initializers

struct StudentAppointmentStruct {
	var firstGrade : Double = 8
	var secondGrade : Double = 8
}
var student = StudentAppointmentStruct(secondGrade: 9.8)
print(student.firstGrade, student.secondGrade)       // 8.0  9.8
```

##### c. Custom Initializers

A custom initializer is the instance method named `init` that initializes the instance properties. An initializer can have zero, one, or multiple parameters. Because of that, [overloading behavior](#6-overloaded-functions) is also applied to initializers.

```swift
// Skeleton of a custom initializer

init(parameters) {
    // perform some initialization here
}
```

To create an instance with the initializer, you simply assign `ClassName(arguments)` to a variable/constant. The number of arguments is the number of parameters passed to the initializer.

```swift
// Example of creating and accessing initial values for stored properties using overloading custom initializers

struct StudentAppointmentStruct {
    var appointment : String
    init() {
    	appointment = "Tue"
    }
    init(_ dayOfWeek: String) {
    	appointment = dayOfWeek
    }
}

var student1 = StudentAppointmentStruct()
var student2 = StudentAppointmentStruct("Thu")
print(student1.appointment,     // Tue
	  student2.appointment)      // Thu
```

You can assign a value to a constant property at any point during initialization, as long as it's set to a definite value by the time initialization finishes. Once a constant property is assigned a value, it can't be further modified.

```swift
// Example of initializing constant properties using custom init

class StudentAppointmentClass {
	let appointment: String
	init() {
    	appointment = "Tue"
    }
    init(_ dayOfWeek: String) {
    	appointment = dayOfWeek
    }
}

var student1 = StudentAppointmentClass()
var student2 = StudentAppointmentClass("Thu")
print(student1.appointment,     // Tue
	  student2.appointment)      // Thu
```

##### d. Initializer Delegation

Initializers can call other initializers to perform part of an instance's initialization. This process, known as *initializer delegation*, avoids duplicating code across multiple initializers. 

```swift
// Example of an initializier delagation for a struct

struct StudentAppointmentStruct {
    let appointment: String
    init() {
        appointment = "Tue"
    }
    init(_ dayOfWeek: String) {
        appointment = dayOfWeek
    }
    init(randomInput randDay: String) {
        let validDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
        if validDays.contains(randDay) {
            self.init(randDay)
        } else {
            self.init()
        }
    }
}

var student1 = StudentAppointmentStruct(randomInput: "Thu")
print(student1.appointment)      // Thu
var student2 = StudentAppointmentStruct(randomInput: "Hello")
print(student2.appointment)      // Tue
```

However, if you use initializer delegation in a class, you must explicitly tell it to be `convenience`. Convenience initializers are secondary, supporting initializers for a class. 

```swift
// Example of an initializier delagation, but for a class

class StudentAppointmentClass {
    let appointment: String
    init() {
        appointment = "Tue"
    }
    init(_ dayOfWeek: String) {
        appointment = dayOfWeek
    }
    convenience init(randomInput randDay: String) {
        let validDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
        if validDays.contains(randDay) {
            self.init(randDay)
        } else {
            self.init()
        }
    }
}

var student1 = StudentAppointmentClass(randomInput: "Thu")
print(student1.appointment)      // Thu
var student2 = StudentAppointmentClass(randomInput: "Hello")
print(student2.appointment)      // Tue
```

#### 6. Deinitialization

Besides initialization, instances of class types can also allow *deinitialization*. You write deinitializers with the `deinit` keyword, similar to how initializers are written with the `init` keyword. The deinitializer doesn't take any parameters and is written without parentheses. Deinitializers are only available on class types.

```swfit
// Skeleton of a deinitializer

deinit {
	// perform the deinitialization
}
```

A *deinitializer* is called immediately and automatically before a class instance is deallocated. Therefore, the programmer does not have to manually use the deinitializer. Moreover, if one explicitly writes a deinitializer, they won't be able to call it out themselves.

Regarding inheritance, a superclass deinitializer is inherited by its subclasses, and the superclass deinitializer is called automatically at the end of a subclass deinitializer implementation. Superclass deinitializers are always called, even if a subclass doesn't provide its own deinitializer. If you are interested in deinitialization, there is a comprehensive example of [Deinitializers in Action] (https://docs.swift.org/swift-book/LanguageGuide/Deinitialization.html) from the Swift book.

#### 7. Inheritance

> Only class can inherit other class's methods and properties.

##### a. Subclass and superclass

When one class inherits from another, the inheriting class is known as *subclass*, and the class it inherits from is known as its *superclass*. A superclass can be a subclass of another superclass or have multiple subclasses, but a subclass cannot have more than one superclass. To indicate that a subclass has a superclass, write the subclass name before the superclass name, separated by a colon `:`.

```swift
// Examples of class inheritance (subclass and superclass)

class Admin {
    var salary = 300
    var department = "Administration"
}
class Moderator: Admin {
    var location = "remote"
}
class ModeratorIntern : Moderator {
}

class Intern : Moderator, Admin {
} // error: cannot handle multiple inheritance
```

Since Moderator class is Admin's subclass, Moderator has all the Admin's properties and methods. Additionally, a subclass can *call*, *access*, and *override* their superclass's methods and properties.

```swift
// Example of a subclass that calls, accesses and overrides the superclass's features

class Admin {
    var salary = 300
    var department = "Administration"
    func increaseSalary(){
    	salary += 100
    }
}
class Moderator: Admin {
    var location = "remote"
    
    // Override increaseSalary()
    override func increaseSalary(){
    	salary += 300
    	super.increaseSalary()
    }
}


var employeeAdmin = Admin()
var employeeMod = Moderator()

// Access properties
print(employeeAdmin.salary, employeeMod.salary)    // 300 300

// Call methods
employeeAdmin.increaseSalary()
employeeMod.increaseSalary()

print(employeeAdmin.salary, employeeMod.salary)    // 400 700
```

##### b. Overriding

As you see above, an overridden method in the subclass must be given the `override` attribute. Doing so clarifies the intention to provide an override rather than a mistake. The `override` keyword also prompts the Swift compiler to check that the overriding class's superclass has a matching declaration. 

Nothing in the superclass body can be overridden, so one must be careful. Some of those that can be modified are:

- Methods (both instance and type)
- Property Getters and Setters (but the property itself cannot be overridden)
- and Property observers

Furthermore, the keyword `super` can (only) be used in the overriding method, property, or subscript to call the superclass version of that method. It is how Swift deals with overloading methods in inheritance. In the above example, we use the `super.increaseSalary()` super method in the overridden `increaseSalary()` method to make the salary increases 400 (300+100) instead of 300.

Nevertheless, overriding behavior can be prevented by marking the method/property, class, or structure as `final`. Any attempt to override a final is reported as a compile-time error.

#### 8. Property Observers

*Property observers* observe and respond to a property's value changes. Property observers are called every time a property's value is set, even if the new value is the same as the property's current value.

Property observers can be added to any property, regardless of whether it was originally defined as a stored or computed property. Classes can also add property observers to inherited properties to be notified when a property's value property changes. Below is an example from [Swift Language Guide: Properties](https://docs.swift.org/swift-book/LanguageGuide/Properties.html#ID262) that defines a new class called `StepCounter`, which tracks the total number of steps that a person takes while walking.

```swift
// Example of adding property observer and override that in the inherited class

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

class StepMinusCounter : StepCounter {
    override var totalSteps: Int {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
            if totalSteps < oldValue  {
                print("Reduced \(oldValue - totalSteps) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
let stepCounterMinus = StepMinusCounter()

stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounterMinus.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps

stepCounter.totalSteps = 60
// About to set totalSteps to 60
stepCounterMinus.totalSteps = 60
// About to set totalSteps to 60
// Reduce 140 steps
```

## Project Guide
### 1. Introduction

It's time to build our first Swift's program, a gallery showcasing students' projects and papers. This idea originates from the UX project called [Project Gallery](https://www.behance.net/gallery/120240899/Project-Gallery/modules/684326629) from CS303 Human-Computer Interaction at Fulbright University Vietnam. However, we will not build the mobile app version of that interface. In fact, this app will have a different user interface. Therefore, it will be renamed *Showcase* to respect the authors.

Some functions of *Showcase*:

- Display projects and papers (articles, for short) in a playful way
- Recommend suited articles based on the user's reading history
- Save articles for later read
- Search articles by name and field
- Switch color mode (light and dark)
- Create and modify user's profile
- Message the author directly
- Flag inappropriate contents
- and, if we have time, allow the user to post and modify their articles

That is all for the first version of our first app built with Swift. It sounds like a mix of a blog and a newspaper app, ha. In that case, I have done some google searches and found a [Subscription Blogging App tutorial](https://github.com/AfrazCodes/Subscription-Blogging-App) from AfrazCodes. I believe that it will be easier for us to get started with that tutorial, then modify it to make our app satisfy all the above functions.

Our app also must communicate with a database, so we will use a small, fast, and free SQL database engine called [SQLite](https://www.sqlite.org). This database holds all users' profiles along with associated articles, reading history, and direct messages. 

Additionally, we will use SwiftUI, an Apple's declarative UI framework from Apple that enables developers to build native user interfaces for IOS apps. Since SwiftUI is a built-in framework, we must import it first. The importing syntax is: `import SwiftUI`.

That's all. Below are a preview of what our app will look like.

![alt text](../../../tree/main/images/app_preview.png "Showcase app preview")


## Demo Code

Above example codes are avaialable in the folder [*Code*](../../../tree/main/code). 

In the case of code preview on GitHub, each `.playground` folder will have multiple `.xcplaygroundpage` sub-folders associated with different language guide sections. Open a sub-folder, and find a `Content.swift` file. Open it to preview the example codes. However, I still prefer you to clone this repository and run the `.playground` file with a compiler such as Xcode.

## References
Comi, M. (2016, April 20). *Struct-style printing of classes in Swift.* Medium. Retrieved April 18, 2022, from https://medium.com/swift-programming/struct-style-printing-of-classes-in-swift-7ee34f1c975a 

Inc., A. (2022). The Swift Programming Language (Swift 5.6). Retrieved March 25, 2022, from https://docs.swift.org/swift-book 

Overflow, S. (2021). *2021 Developer Survey*. Stack Overflow. Retrieved March 26, 2022, from https://insights.stackoverflow.com/survey/2021#section-most-popular-technologies-programming-scripting-and-markup-languages  

*Swift functions*. Programiz. (2022). Retrieved April 10, 2022, from https://www.programiz.com/swift-programming/functions  

Veen, T. in't. (2019). Chapter 9. Iterators, sequences, and collections. In *Swift in depth*. Manning. 
