# Simple Statements 

Now, you have successfully write your first code with some comments in Swift. Let's continue.

### Table of Content
- [1. Data Types and Data Binding](#1-data-types-and-data-binding)  
  - [1.1. Data Types](#11-data-types)  
  - [1.2. Data Binding](#12-data-binding)  
- [2. Constants and Variables](#2-constants-and-variables)  
  - [2.1. Naming Convention](#21-naming-convention)  
  - [2.2. Declaring Syntax](#22-declaring-syntax)  
- [3. Basic Operators](#3-basic-operators)    
  - [3.1. Assignment](#31-assignment)  
  - [3.2. Arithmetic](#32-arithmetic)  
  - [3.3. Compound Assignment](#33-compound-assignment)  
  - [3.4. Comparison](#34-comparison)  
  - [3.5. Logical](#35-logical)  
  - [3.6. Range](#36-range)  
- [4. Short-circuit Evaluation])(#4-short-circuit-evaluation)

## 1. Data Types and Data Binding

When you write `print("Hello, world!")`, you ask the compiler to print out a `String` called "Hello, world!". Alternatively, `print(2)` is a function in which the compiler will print out an `Integer` of 2. So, what are String and Integer? Does Swift have more crazy terms than just two of them? When is something assigned as one of those terms? Let's find out.

### 1.1. Data Types

String and Integer are only two of many data types provided by Swift. As stated in the documentation, Swift provides its version of all fundamental C (and Objective-C) data types such as Integer, Double, Float, Boolean, and String. Swift also has powerful versions of the three primary collection types called Array, Set, and Dictionary. In addition, it also has new data types called Optional, Tuple, etc. 

If you are ready, let's dig down on each data types. Please noted, in Swift, data types are always written in Pascal case (e.g. Int).


#### a. Integers

*Integers* are whole numbers with no fractional component, such as 42 and -23. 

In Swift, there are two types of integers: `Int` and `UInt`. While Int are signed numbers (positive, zero, or negative), UInt are unsigned one (only positive or zero). Also, Int and UInt are provided in 8, 16, 32, and 64 bit forms and follow a naming convention in which an 8-bit unsigned integer is of type `UInt8`, and a 32-bit signed integer is of type `Int32`. However, in most cases, you don't have to pick a specific size of integer to use in your code as Swift will do that for you. You can check the range of number with `.min` and `.max`.

#### b. Floating-point Numbers

*Floating-point numbers* are numbers with a fractional component, such as 3.14159, 0.1, and -273.15.

In Swift, there are two floating-point number types: `Double` and `Float`. While Double  represents a 64-bit floating-point number, Float only represents 32-bit one. Therefore, Double is preferred since it has a precision of at least 15 decimal digits, compared to Float with 6 decimal digits. 

#### c. Booleans

*Boolean* values are referred to as logical, because they can only ever be true or false. Swift provides two and only two `Bool` constant values: `true` and `false`. Any non-Boolean values cannot be substituted for Bool.

For example, `True`, even though it looks like `true`, is not a valid Bool type in Swift. Moreover, while some languages such as Python and JavaScript interpret `0` as `false` and other integers as `true`, Swift prevents this from happening. In fact, it will prompt a compile-time error if someone tries to do that.

#### d. Strings and Characters

A *String* is a series of characters, such as "hello, world" or "albatross". The contents of a `String` can be accessed in various ways, including as a collection of `Character` values. 

You can include predefined String values within your code as string literals and multiline string literals. While a string literal is a sequence of characters surrounded by double quotation marks `"`, a multiline string literals is a sequence of several-line-spanned characters surrounded by three double quotation marks `"""` with a line break.

#### e. Tuples

*Tuples* group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other. You can create tuples from any permutation of types, and they can contain as many different types as you like. There’s nothing stopping you from having a tuple of type `(Int, Int, Int)`, or `(String, Bool)`, or indeed any other permutation you require.

#### f. Optionals

You use *Optionals* in situations where a value may be absent. An optional represents two possibilities: Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all. Optional is indicated by the question mark `?` followed after a data type. You can also find Optional in explicit conversion of unrelated data types.


#### g. Arrays

*Array* is one of the primary Collection types for storing collections of values. Array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions. 

The type of an Array is written in full as `Array<Element>`, where `Element` is the type of values the array is allowed to store. You can also write the type of an array in shorthand form as `[Element]`, which is preferable.

#### h. Sets

Like Array, *Set* is another one of the primary Collection types for storing collections of values. Set stores distinct values of the same type in a collection with *no defined ordering*. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.

The type of a Set is written as `Set<Element>`, where `Element` is the type that the set is allowed to store. Unlike arrays, sets don’t have an equivalent shorthand form.

#### i. Dictionaries

*Dictionary* is the last one of the 3 primary Collection types for storing collections of values. Dictionary stores associations between keys of the same type and values of the same type in a collection with *no defined ordering*. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary.

The type of a Dictionary is written in full as `Dictionary<Key, Value>`, where `Key` is the type of value that can be used as a dictionary key, and `Value` is the type of value that the dictionary stores for those keys. You can also write the type of a dictionary in shorthand form as `[Key: Value]`, which is preferable.

### 1.2. Data Binding

Swift **binds data types at compile time**, which makes it a type-safe programming language. In following sections, you will see more about the applications of this type-safe characteristic.

## 2. Constants and Variables

Phew, you passed one of the most exhausting parts of this tutorial. I believe this part will be much easier to grasp. Going along with data types are variables and constants.

Swift uses variables and constants to store and refer to values by an identifying name. While the value of a constant can’t be changed once it’s set, a variable can be set to a different value in the future. In another word, anything declared as variable is *mutable* (can add, remove, or change after declaration). Oppositely, anything declared as constant is *immutable* (cannot do anything with it after declaration).

### 2.1. Naming Convention

For Swift, constant and variable names can contain almost any character except whitespace, mathematical symbols, arrows, private-use Unicode scalar values, or line-and box-drawing characters. This means that even pictographs like emoji `💪` and logographs like Chinese `大` are legal variable/constant name.

However, for universal development, we should use Unicode character. As noted in Swift 3.0 documentation, any Unicode variables/constants should be named in camelCase like `firstVariable`.

One more thing to remember, although numbers may be included elsewhere within the name, a variable/constant cannot begin with a number. For example, `the1stVarible` is a legal name for variable and constant, but `1stvariable` is not.

### 2.2. Declaring Syntax
#### a. Declaration and Initialization

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

<!--Furthermore, there is a feature (more like a bug to me) in Swift that enable the variable call before it is initialized. -->
<!--```swift-->
<!--// Example of variable assignment's nature-->
<!--print(name)         // /n  -->
<!--print(age)          // 10-->
<!--var name = "Quan"-->
<!--var age : Int = 20 ?? 10-->
<!--```-->

Finally, as said, you cannot declare a variable without the initialized value. For example:

```swift
var name   // error: unexpected pattern
```

However, in some cases you might want not to store any value in a variable and you can achieve that using explicit annotation, which is introduced in the right below section about [type annotation](#b-type-annotation).

#### b. Type Annotation

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

Last but not least, manual type annotation can reduces wrong data type re-assignment and make your debug easier. This is very useful for number-like variables calculating operators, which you will learn in the following section regarding [arithmetic operators](#32-arithmetic). 


## 3. Basic Operators

An operator is a special symbol or phrase that you use to check, change, or combine values. In Swift, a operator is either unary (single target), binary (two targets), or ternary (three targets).

### 3.1. Assignment

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

### 3.2. Arithmetic

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

### 3.3. Compound Assignment

Compound assignment operators is an operator that combine assignment `=` with another operation. One example is the addition assignment operator `+=`.

```swift
// Example of a String concatenation using compound addition operator

var greeting = "hello, "
greeting += "world"
print(greeting)  // "hello, world"
```
In the example above, the expression `greeting += "world"` is shorthand for `greeting = greeting + "world"`. Effectively, the addition and the assignment are combined into one operator that performs both tasks at the same time.

And similar to assignment operator, compound assignment operator don’t return a value. 

### 3.4. Comparison

Swift supports many comparison operators, including:

- Equal `==`
- Not equal `!=`
- Identical `===`
- Not identical `!==`
- Greater than `>`
- Less than `<`
- Greater than or equal `>=`
- Less than or equal `<=`
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

### 3.5. Logical

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

On top of that, logical operators use [short-circuit evaluation](#4-short-circuit-evaluation) to consider its expressions, which allows one to write dirty code without being reported by the compiler.

### 3.6. Range
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

## 4. Short-circuit Evaluation

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

## Demo Code
Above example codes are avaialable in the folder *Code* under the name [2-simple-statements.playground](../../../code/2-simple-statements.playground). For instruction to preview code directly on Github, please refer to this section on [Code Preview](../../../README.md/#code-preview).

## References

Inc., A. (2022). *Language Guide*. The Swift Programming Language (Swift 5.6). Retrieved March 25, 2022, from https://docs.swift.org/swift-book/LanguageGuide  

