# learn-swift

A guidance project on using Swift from CS308 Programming Languages at Fulbright University Vietnam
  
## General Information

Swift was *created on December 3, 2015, by Apple* on an attempt to replace the old-dying Objective-C for its application development purpose. However, in Stack Overflow's 2021 developer survey, only 5% of the community use Swift regularly, which is a very small percentage.

So, why learn Swift? If you are looking for an easy, interacting but powerful programming language, Swift is the right choice for you. Apple even advertises that anyone, even children having no experience with coding, can learn it. However, if you want to become an Apple developer, learning Swift is a must.

Apple also creates a paired compiler to run Swift code, which is named Xcode. You may find Xcode hard-to-use at first, but it will become mush easier and more powerful when continue being used. Additionally, SwiftUI, an UI development tool integrated in Xcode, is made in a way that runs and previews the code’s result directly on an Apple device instead of a console or pop-up window like Python does.

There are many resources for developers who are investigating Swift such as:
- [The Swift programming language](https://docs.swift.org/swift-book/) for a comprehensive language guide
- [Swift Playground](https://developer.apple.com/swift-playgrounds/) for interacting lessons on building apps using Swift
- [Swift Documentation](https://developer.apple.com/documentation/swift) for detailed documentation
- [Apple’s GitHub](https://github.com/apple) for public source code


## Getting Started

Let's get the ball rolling, aren't we?
To code in Swift, you have to:
  1. Have a Mac (Swift cannot be run from a Window or Linux device)
  2. Have an Apple ID. If you have not created one, please visit [Apple ID](https://appleid.apple.com) and click on *Create Your Apple ID* on the top right of the screen to create an Apple ID. 
  3. Install [Xcode](https://developer.apple.com/xcode/) on your Mac (once again, Xcode is an Apple-developed compiler for Swift). On the site, you will find that there are 2 downloading options: *Download from Website* and *Download from Mac App Store*. For beginner, I'd recommend you choosing the latter (*Download from Mac App Store*) for connivence as it will install the newest version along with all necessary tools. But if you want to choose the version (including both official and beta versions) of Xcode and manually install the additional tool, choose *Download from Website*. To be clear, the version I use for this tutorial is 13.2.1.<sup>1</sup>
  4. [optional] Clone this repository. The folder *Demo Code* provides many Swift codes, which are shown in this guide, for you to play around with. You may use Xcode to run the playground files. For instruction to preview code directly on Github, please refer to this section on [Code Preview](#code-preview)
  
Once you have done all steps, you are ready to begin.

<sup>1</sup> For more instruction on installing and running Xcode, please visit [Apple Developer: Xcode](https://developer.apple.com/documentation/xcode).

## Language Guide
<!--
#### Table of contents

- [A. The Basics](#a-the-basics)
  - [Hello, world!](#1-hello-world)  
  - [Commenting](#2-commenting)  
  - [Data Types](#3-data-types)
  - [Data Binding](#4-data-binding)    
- [B. Constants and Variables](#b-constants-and-variables)  
  - [Naming Convention](#1-naming-convention)  
  - [Declaring Syntax](#2-declaring-syntax)  
- [C. Basic Operators](#C-basic-operators)    
  - [Assignment](#1-assignment)  
  - [Arithmetic](#2-arithmetic)  
  - [Compound Assignment](#3-compound-assignment)  
  - [Comparison](#4-comparison)  
  - [Logical](#5-logical)  
  - [Range](#6-range)  
- [D. Short-circuit Evaluation](#d-short-circuit-evaluation)  
- [E. Selection Statements](#e-selection-statements)  
  - [If](#1-if)  
  - [Switch](#2-switch)  
  - [Guard](#3-guard)  
- [F. Iteration Statements](#f-iteration-statements)  
  - [While Loop](#1-while-loop)  
  - [For-in Loop](#2-for-in-loop)  
- [G. Control Transfer Statements](#g-control-transfer-statements)  
- [H. Functions](#h-functions)  
  - [Function Declaration and Calling](#1-function-declaration-and-calling)  
  - [Return Values](#2-return-values)  
  - [Parameters and Arguments](#3-parameters-and-arguments)  
  - [Function Types](#4-function-types)  
  - [Library-provided Functions](#5-5-library-provided-functions)  
  - [Overloaded Functions](#6-overloaded-functions)  
  - [Nested Functions](#7-nested-functions)  
  - [Recursions](#8-recursions)  
-->

### A. The Basics
#### 1. Hello, world!

Printing in Swift is easy as it can be done with just one line of code, which is `print()`. You don't have to include the semi-colon `;` at the end of each line of code, but you can do that if your want to.

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

Code is read by other people more frequently than you think. Therefore, we use comments so that other programmers can understand what we write. Since a comment is only visible to humans and gets ignored by computers, you don't have to worry that comment will destroy your code. In fact, you're encouraged to write comments.

There are 2 types of comments in Swift: single-line and multi-line. Single-line comments are often used to explain the logic of a code, and multi-line comments are used to explain a whole set of code.

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

Swift provides its version of all fundamental C (and Objective-C) data types such as Integer, Double, Float, Boolean, and String. Swift also has powerful versions of the three primary collection types called Array, Set, and Dictionary. In addition, it also has new data types called Optional, Tuple, etc. 

If you are ready, let's dig down on each data types. Please noted, in Swift, data types are always written in Pascal case (e.g. Int).

##### a. Integers

*Integers* are whole numbers with no fractional component, such as 42 and -23. 

In Swift, there are two types of integers: `Int` and `UInt`. While Int are signed numbers (positive, zero, or negative), UInt are unsigned one (only positive or zero). Also, Int and UInt are provided in 8, 16, 32, and 64 bit forms and follow a naming convention in which an 8-bit unsigned integer is of type `UInt8`, and a 32-bit signed integer is of type `Int32`. However, in most cases, you don't have to pick a specific size of integer to use in your code as Swift will do that for you. You can check the range of number with `.min` and `.max`.

##### b. Floating-point Numbers

*Floating-point numbers* are numbers with a fractional component, such as 3.14159, 0.1, and -273.15.

In Swift, there are two floating-point number types: `Double` and `Float`. While Double  represents a 64-bit floating-point number, Float only represents 32-bit one. Therefore, Double is preferred since it has a precision of at least 15 decimal digits, compared to Float with 6 decimal digits. 

##### c. Booleans

*Boolean* values are referred to as logical, because they can only ever be true or false. Swift provides two and only two `Bool` constant values: `true` and `false`. Any non-Boolean values cannot be substituted for Bool.

For example, `True`, even though it looks like `true`, is not a valid Bool type in Swift. Moreover, while some languages such as Python and JavaScript interpret `0` as `false` and other integers as `true`, Swift prevents this from happening. In fact, it will prompt a compile-time error if someone tries to do that.

##### d. Strings and Characters

A *String* is a series of characters, such as "hello, world" or "albatross". The contents of a `String` can be accessed in various ways, including as a collection of `Character` values. 

You can include predefined String values within your code as string literals and multiline string literals. While a string literal is a sequence of characters surrounded by double quotation marks `"`, a multiline string literals is a sequence of several-line-spanned characters surrounded by three double quotation marks `"""` with a line break.

##### e. Tuples

*Tuples* group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other. You can create tuples from any permutation of types, and they can contain as many different types as you like. There’s nothing stopping you from having a tuple of type `(Int, Int, Int)`, or `(String, Bool)`, or indeed any other permutation you require.

##### f. Optionals

You use *Optionals* in situations where a value may be absent. An optional represents two possibilities: Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all. Optional is indicated by the question mark `?` followed after a data type. You can also find Optional in explicit conversion of unrelated data types.

##### g. Arrays

*Array* is one of the primary Collection types for storing collections of values. Array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions. 

The type of an Array is written in full as `Array<Element>`, where `Element` is the type of values the array is allowed to store. You can also write an array's type in shorthand form as `[Element]`, which is preferable.

##### h. Sets

Like Array, *Set* is another one of the primary Collection types for storing collections of values. Set stores distinct values of the same type in a collection with *no defined ordering*. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.

The type of a Set is written as `Set<Element>`, where `Element` is the type that the set is allowed to store. Unlike arrays, sets don’t have an equivalent shorthand form.

##### i. Dictionaries

*Dictionary* is the last one of the 3 primary Collection types for storing collections of values. Dictionary stores associations between keys of the same type and values of the same type in a collection with *no defined ordering*. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary.

The type of a Dictionary is written in full as `Dictionary<Key, Value>`, where `Key` is the type of value that can be used as a dictionary key, and `Value` is the type of value that the dictionary stores for those keys. You can also write the type of a dictionary in shorthand form as `[Key: Value]`, which is preferable.

#### 4. Data Binding

Swift **binds data types at compile time**, which makes it a type-safe programming language. In following sections, you will see more about the applications of this type-safe characteristic.

### B. Constants and Variables

Swift uses variables and constants to store and refer to values by an identifying name. While the value of a constant can’t be changed once it’s set, a variable can be set to a different value in the future. In another word, anything declared as variable is *mutable* (can add, remove, or change after declaration). Oppositely, anything declared as constant is *immutable* (cannot do anything with it after declaration).

#### 1. Naming Convention

For Swift, constant and variable names can contain almost any character except whitespace, mathematical symbols, arrows, private-use Unicode scalar values, or line-and box-drawing characters. This means that even pictographs like emoji `💪` and logographs like Chinese `大` are legal variable/constant name.

However, for universal development, we should use Unicode character. As noted in Swift 3.0 documentation, any Unicode variables/constants should be named in camelCase like `firstVariable`.

One more thing to remember, although numbers may be included elsewhere within the name, a variable/constant cannot begin with a number. For example, `the1stVarible` is a legal name for variable and constant, but `1stvariable` is not.

#### 2. Declaring Syntax
##### a. Declaration and Initialization

Constants and variables must be declared and initialized before they’re used. You declare constants with the `let` keyword and variables with the `var` keyword, followed by a variable name, equal sign `=`, and the assigning value.

The example below will declare name as a variable and age as a constant. 

```swift
// Example of variable and constant declaration
var name = "User"    
let age = "10"
```

> If a stored value in your code won’t change, always declare it as a constant. Use variables only for storing values that need to be able to change.

If you want to declare multiple constants/variables at the same time, you can do it on the same line by using commas `,` to separate. The data types of these constants/variables and be mixed. For example, we can declare variables name and age at the same time although name is a String and age is an Integer

```swift
// Example of a multi-variable declaration of different types

var name = "User", age = 20
```

Since most types in Swift are value type, we actually make a copy of the assigning value and pass it into the assigned a variable/constant when declaring or changing a variable/constant. Therefore, the changing value of the former does not affect the assigned variable. For example:

```swift
// Example of variable assignment's nature

var name = "User"    
var user = name
name = "Do Duc Quan"
print(user)         // "User"
```

Finally, as said, you cannot declare a variable without the initialized value. For example:

```swift
var name   // error: unexpected pattern
```

##### b. Type Annotation

In Swift, there are 2 ways of annotating data types: **implicit** and **explicit**. While implicit annotation means the compiler will do the job for you, explicit annotation requires manual data type specification. Nevertheless, either ways will **specify data type strongly and statically**. This means you cannot change it after declaration unless using explicit conversion of related type. I will extend this statement in further section.

For now, let's focus on type annotation only. As you see in many examples above, Swift has implicitly declared the data type for you. However, you can explicitly annotate the data types and your type annotations will override the default one. To explicitly declare a variable/constant's type, you use a colon `:` after the variable/constant's name, following with a space and the name of the type to use. Another way is to put the data type and wrap the content inside a parentheses `Int(something)`. We will definitely see the latter often as it is applied to do explicit conversion.

```swift
// Example of a explicit type annotation and type conversion 

var welcomeMessage: String = "Welcome"
var age = Int("20") // 20
```

Moreover, you can set a variable to have `nil` value by explicitly annotating Optionals type (putting the question mark `?` after the associated data type). You can also assign the value `nil` (meaning no value) to the variable, yet this step is optional. This is called [Optional Binding Declaration](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html#ID333).

```swift
// Example of optional binding declaration

var name : String?     // Set name to either have a value or not at all
var age : Int? = nil   // This is equivalent to the first line
```

Last but not least, manual type annotation can reduces wrong data type re-assignment and make your debug easier. This is very useful for number-like variables calculating operators, which you will learn in the following section regarding [arithmetic operators](#2-arithmetic).

### C. Basic Operators

An operator is a special symbol or phrase that you use to check, change, or combine values. In Swift, a operator is either unary (single target), binary (two targets), or ternary (three targets).

#### 1. Assignment

The *assignment operator* `=` assigns the value of the left side with the value of the right side. You can use assignment operator to initialize variable/constant.

```swift
// Example of a variable assignment

var name = "Do Duc Quan"
var user = name    // initialize user with name, whose value is "Do Duc Quan"
```

For Tuple, you must have equal number of values on both sides. For example:
```swift
// Example of a Tuple constant assignment

let (x, y) = (1, 2)
print(x)   // 1
print(y)   // 2
```

You can also change the value of a variable after declaration. The only condition is that the new value's type must match that of the old one. For example:

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

If you want to reassign a related data type value to a variable, you must use explicit conversion. But, if you try to use explicit conversion on Optional unrelated data type, the variable will return to the original value. For example:

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

However, the result of the calculation differs from each data types. This is because Swift is a strong language that prevent data type from changing, unless by explicit conversion. As a result, the result of a binary integer calculation is always an integer. The same rule is applied to Double and Float binary calculation. Additionally, Swift restricts any arithmetic operator on different data types. For example:

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

Compound assignment operators is an operator that combine assignment `=` with another operation. One example is the addition assignment operator `+=`.

```swift
// Example of a String concatenation using compound addition operator

var greeting = "hello, "
greeting += "world"
print(greeting)  // "hello, world"
```
In the example above, the expression `greeting += "world"` is shorthand for `greeting = greeting + "world"`. Effectively, the addition and the assignment are combined into one operator that performs both tasks at the same time.

And similar to assignment operator, compound assignment operator don’t return a value. 

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

You can also compare two tuples if they have the same type and the same number of values. Tuples are compared from left to right, one value at a time, until the comparison finds two values that aren’t equal. Those two values are compared, and the result of that comparison determines the overall result of the tuple comparison. If all the elements are equal, then the tuples themselves are equal. For example:

```swift
// Examples of comparison operators on Tuple variables

(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"
```

#### 5. Logical

Logical operators modify or combine the Boolean logic values true and false. Swift supports the three standard logical operators:
- NOT `!` inverts a Boolean value (`true` becomes `false`, and vice versa).
- AND `&&` creates logical expressions where both values must be `true` for the overall expression to also be `true`.
- OR `||` creates logical expressions in which only one of the two values has to be `true` for the overall expression to be `true`.

You can combine multiple logical operators. However, they are left-associative, meaning compound expression with multiple logical operators evaluates the leftmost subexpression first. For example, `true || true && false` means `false`. However, for the sake of reading codes, we should add paranthesis `()` in that case.

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

On top of that, logical operators use [short-circuit evaluation](#d-short-circuit-evaluation) to consider its expressions, which allows one to write dirty code without being reported by the compiler.

#### 6. Range
Swift includes several range operators, which are shortcuts for expressing a range of values and can be characterized as:
- Closed `...` or Half-Opened `..<`
- Two-Sided `a  b` or One-Sided `a`,`b`

#### a. Closed and Half-Opened

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

#### b. Two-Sided and One-Sided

| Two-Sided | One-Sided |
| --- | --- |
| `a..b` | `a..` `..b` |
| limited in two directions | limited in one direction and continue as far as possible in the other |

#### c. Full version

When declaring a range operator, you have to choose pick one from each two groups above. For example, a range operator can be closed and two-sided, or half-opened and one-sided. Below are some examples of range operators.

```swift
..<2     // [...,-2,-1,0,1]
2...     // [2,3,4,5,6,7,...]
2..<6    // [2,3,4,5]
2...6    // [2,3,4,5,6]
```

In the upcoming section regarding `for-in` loop, you may see these operators appear as their implication is to use within a loop.

### D. Short-circuit Evaluation

*Short-circuiting* is a programming concept by which the compiler skips the execution or evaluation of some sub-expressions in a logical expression. The compiler stops evaluating the further sub-expressions as soon as the value of the expression is determined.

Specifically, if the first expression already fixes the overall result (e.g. `true || ...`, `false && ...`), there is no need to execute other expressions. Additionally, the use of parenthesis `()` does not prevent short-circuit from happening. For example, `true || (true && false)` will be short-circuit as true because the leftmost value is `true`, so there is no need evaluating the rest.

Short-circuit is used to optimize run time, yet it may cause confusing if other expression is a dirty code or it is a suppose-to-run function. There are few obvious cases of dirty code that Swift can catch during compile time, yet most cases will not be catch. For instance, you cannot run the follwing codes:

```swfit
// Example of dirty codes catched in compile time

print(true || ("dar" == 9))   // error: cannot compare String with Int
print(true || 9 / 0 == 0)     // error: cannot divide by 0
```

However, the following code will be run successfully, which may lead to program vulnerbility.

```swfit
// Example of dirty codes NOT catched because of short-circuit

var zero = 0
print(true || 9 / zero == 0)     // true
```

As you can see, the program will print out "true" and won't report any error in the code. The reason behind is that the above code is not lexically wrong, so it will be passed to run time without being catched in the compile time. In run time, the code will be short-circuited, leading to the error will never be reported. Therefore, one must be very careful of short-circuit of any forms.

### E. Selection Statements
As default, *all* the codes will be run singly and top-down. However, it’s often useful to execute certain parts of code depending on the value of one or more conditions, which is called conditional branch. In Swift, there are three ways to add conditional branch to your code: `if`, `switch`, and `guard`.

#### 1. If

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

Besides, we can use a constant declaration `let` statement as the condition. The declaration returns `true` if it's executable, and returns `false` when the assigning value is `nil` - meaning in-executable.

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

Like logical statement, Swift also uses [short circuit](#d-short-circuit-evaluation) on `if-else if-else` statement. It means that Swift checks the conditions from top-down, the code block of the met condition is executed, and the rest code block will be ignored.

#### 2. Switch

A `switch` statement allows certain blocks of code to be executed depending on the value of a control expression. The control expression of the `switch` statement is evaluated and then compared with the patterns specified in each case. If a match is found, the program executes *only* the statements listed within the scope of that case. It will not allow implicit fallthrough. However, if you want to have a fallthrough in `switch`, you can explicitly tell Switch to do by using a control transfer statement called [`fallthrough`](#g-control-transfer-statements).

Unlike other languages, the values of expressions your code can branch on are very flexible. Floating-point numbers, strings, tuples, instances of custom classes, and optionals are valid values of expression. Moreover, you can use value binding `let x = ...` along with `where` clause to match some specific values. Furthermore, the underscore character `_`, also known as the wildcard pattern, is used to match *any possible value*. 

Same as `if`, `switch` also allows compound case by writing several patterns after case, with a comma between each of the patterns. If any of the patterns match, then the case is considered to match. Chained `switch` also shares the same behavior of `if` statement, which uses [short-circuit evaluation](#d-short-circuit-evaluation).

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

One more thing to note, the key difference between `if` and `switch` in Switch is that the latter is exhaustive. Saying, there has to have at least one case that matches the control expression. Usually, we can obtain this through `default` case, which is similar to `else` in `if` statement. And in case we did not want anything to happen in a default (or any) case, we can use another control transfer statement called [`break`](#g-control-transfer-statements).

#### 3. Guard

The `guard` statement is an opposite of `if` statement. It executes statements depending on the Boolean value of an expression. 

Although it uses the same method as `if` (executing the code if the condition is true), it is normally used to execute a code block inside `else` branch if the condition is `false`. And the condition is normally an optional binding that returns `true` or `false` given the value's existence. Similar to `if` statement, `guard` also accepts constant declaration as the condition.

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

The above code illustrates the use of `guard` statement inside a for-in loop. Nevertheless, what does `for-in` loop mean? Let's find out!

### F. Iteration Statements

There are two main types of iteration in Swift: `while` loop and `for-in` loop. While a `while` loop is used when we don't know the number of iterations before the first iteration begins, a `for-in` loop is used when we want to iterate a specific Sequence.

#### 1. While loop

A `while` loop performs a set of statements until a condition becomes `false`. There are two types of `while` loop: `while` and `repeat-while`.

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

In most cases, we will use `while` loop. However, there will be some situations that you want to execute at least one time, no matter the condition is. 

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

### G. Control Transfer Statements
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

### H. Functions

A *function* is a reusable block of code that performs a specific task. There are two types of function in Swift: user-defined and library-provided. As explained by theirs names, the latter is already provided by Swift's library and the former has to be manually declared. 

In Swift, there is no rule on where to place the function call and function declaration. It is similar to Java, so you can call the function before its declaration. Just reminds yourself that you have to declare it somewhere in the program. But how to declare and call a function? 

#### 1. Function Declaration and Calling

Swift use `func` as a type keyword to declare a function. The full syntax is:

```swift
func functionName(parameters) -> returnType {
  // function body 
}
```

where:

- `func` is the type keyword
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

By default, the number and the order of need-passed arguments is also those of parameters. Similar to parameter, arguments are also separated with one another by a comma `,`. One more thing, the argument's name and type must match those of parameter. Detailed information will be discussed more in the below section of [parameters & arguments](#3-parameters-and-arguments).

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

##### a. Function Without Return Value

Functions aren’t required to define a return type. When a function doesn't have a return type means it doesn’t return a value. Therefore, its definition doesn’t include the return arrow (->) or a return type.

```swift
// Example of a function with no return value

func multiply(num1: Int, num2: Int) {
    print(num1, "times", num2, "equals", num1 * num2)
}
```

> Strictly speaking, this type of function does still return a value, even though no return value is defined. Functions without a defined return type return a special value of type `Void`. This is simply an empty tuple, which is written as `()`.

##### b. Function With Return Values

If we want our function to return some value, we use the `return` statement and *return type*. A function with a defined return type can’t allow control to fall out of the bottom of the function without returning a value, and attempting to do so will result in a compile-time error.

With *return values*, we can access and assign the result of the function to a variable in outer scope. For example, we can modify the function `multiply()` above to returns an Int rather than printing that Int out, then assigns the return value to a variable called `result`.

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

As you can se above, a tuple-typed return value can have many variables of different primitive types. *Tuple* also allows optional binding, which can be used as a *return type* to reflect the fact that the entire tuple can be nil. You write an optional tuple return type by placing a question mark after the tuple type’s closing parenthesis, such as `(Int, Int)?` or `(String, Int, Bool)?`.

#### 3. Parameters and Arguments
##### a. Parameters
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

> Pass by value means that a copy of the variable’s value is pass into the function. Any change made to the parameter variable is *invisible* to the caller's variable. For example, Java method is pass by value.
> 
> Pass by reference means to pass the address of the variable into the function. If the callee modifies the parameter variable, the effect is *visible* to the caller’s variable. For example, C supports pass by reference.

An *in-out parameter* is the one that’s passed *in* to the function, is modified by the function, and is passed back *out* of the function to replace the original value. 

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

However, therer is some litmitations of inout parameters. You can only pass a variable as the argument for an in-out parameter. You can’t pass a constant or a literal value as the argument, because constants and literals can’t be modified. This example will prompt a compilt-time error message:

```swift
swap(&7, &8)           // error: cannot pass immutable value
```

#### b. Arguments

The argument label is used when calling the function. Each argument is written in the function call with its argument label before it. By default, parameters use their parameter name as their argument label. However, one may want to specify the argument labels.

In that case, you write an argument label before the parameter name, separated by a space. If you have an argument label, you will have to refer to it when call the function. For example:

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

If you don’t want an argument label for a parameter, write an underscore `_` instead of an explicit argument label for that parameter. Then you can omit the argument label when call the function. 

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

The type of both of these functions is `(Int, Int) -> Int`. This can be read as "a function that has two parameters, both of type `Int`, and that returns a value of type `Int`.”

#### 5. Library-provided Functions

Beside user-declared function, we also have another type called *library-provided function* (also called standard library functions). Basically, it is a function that can be used directly in the program without declaration. Some common ones are: `print()`, `sqrt()`, and `pow()`.

Most *library-provided functions* are defined inside a framework, which requires manual import to the program. For example, `sqrt()` and `pow()` are defined inside the `Foundation` framework, so the `Foundation` framework must be imported before any built-in function calls. 

Below is the example of importing a library and calling its built-in functions:

```swift
// Example of a function that split an string into two sub strings using a library-provided function

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

#### 8. Recursions

*Recursion* is a common techique in programming that makes a function call itself. A recursion must include a base case and a recursive call, which is reflected in the below recursive function's skeleton.

```swift
// Skeleton of recursion

func recurse() {
    base case
    
    recurse()
}
```
##### a. Base case

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

##### b. Recursive call

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

##### c. Applications

Recursion has so many applications. It is required in problems concerning data structures and advanced algorithms, such as Graph and Tree Traversal. However, it takes a lot of stack space and uses more processor time, so one may avoid using it. However, recursion is still cool, isn't it?

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

## Demo Code

Above example codes are avaialable in the folder *Code*. 

In case of code preview on GitHub, each `.playground` folder will have multiple `.xcplaygroundpage` sub-folders associated to different sections of the language guide. Open a sub-folder and you will find a `Content.swift` file. Open it to preview the example codes. However, I still prefer you cloning this repository and running the `.playground` file with a compiler such as Xcode.

## References
Inc., A. (2022). *About the Language Reference*. The Swift Programming Language (Swift 5.6). Retrieved March 25, 2022, from https://docs.swift.org/swift-book/ReferenceManual/AboutTheLanguageReference.html  

Inc., A. (2022). *About Swift*. The Swift Programming Language (Swift 5.6). Retrieved March 25, 2022, from https://docs.swift.org/swift-book

Inc., A. (2022). *Language Guide*. The Swift Programming Language (Swift 5.6). Retrieved March 25, 2022, from https://docs.swift.org/swift-book/LanguageGuide  

Overflow, S. (2021). *2021 Developer Survey*. Stack Overflow. Retrieved March 26, 2022, from https://insights.stackoverflow.com/survey/2021#section-most-popular-technologies-programming-scripting-and-markup-languages  

*Swift functions*. Programiz. (2022). Retrieved April 10, 2022, from https://www.programiz.com/swift-programming/functions  

Veen, T. in't. (2019). Chapter 9. Iterators, sequences, and collections. In *Swift in depth*. Manning. 
