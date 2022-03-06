# learn-swift

A tutorial project on using Swift from CS308 Programming Languages at Fulbright University Vietnam

### Table of Content

- [1. General Information](#1-general-information)  
- [2. Getting Started](#2-getting-started)    
- [3. Hello, world!](#3-hello-world)  
  - [3.1. Hello, world!](#31-hello-world)  
  - [3.2. Commenting](#32-commenting)  
- [4. Data Types and Data Binding](#4-data-types-and-data-binding)  
  - [4.1. Data Types](#41-data-types)  
  - [4.2. Data Binding](#42-data-binding)  
- [5. Constants and Variables](#5-constants-and-variables)  
  - [5.1. Naming Convention](#51-naming-convention)  
  - [5.2. Declaring Syntax](#52-declaring-syntax)  
- [6. Basic Operators](#6-basic-operators)    
  - [6.1. Assignment](#61-assignment)  
  - [6.2. Arithmetic](#62-arithmetic)  
  - [6.3. Compound Assignment](#63-compound-assignment)  
  - [6.4. Comparison](#64-comparison)  
  
  
## 1. General Information

Swift was *created on December 3, 2015, by Apple* on an attempt to replace the old-dying Objective-C for its application development purpose. However, in Stack Overflow's 2021 developer survey, only 5% of the community use Swift regularly, which is a very small percentage.

So, why learn Swift? If you are looking for an easy, interacting but powerful programming language, Swift is the right choice for you. Apple even advertises that anyone, even children having no experience with coding, can learn it. However, if you want to become an Apple developer, learning Swift is a must.

Apple also creates a paired compiler to run Swift code, which is named Xcode. You may find Xcode hard-to-use at first, but it will become mush easier and more powerful when continue being used. Additionally, SwiftUI, an UI development tool integrated in Xcode, is made in a way that runs and previews the code’s result directly on an Apple device instead of a console or pop-up window like Python does.

There are many resources for developers who are investigating Swift such as:
- [Apple Developer: Swift](https://developer.apple.com/swift/) & [Swift's homepage](https://www.swift.org) for general information
- [Swift Playground](https://developer.apple.com/swift-playgrounds/) for interacting lessons on coding and building apps using Swift
- [Swift Documentation](https://docs.swift.org/swift-book/) for language guide
- [Apple’s GitHub](https://github.com/apple) for public source code


## 2. Getting Started

Let's get the ball rolling, aren't we?
To code in Swift, you have to:
  1. Have a Mac (Swift cannot be run from a Window or Linux device)
  2. Have an Apple ID. If you have not created one, please visit [Apple ID](https://appleid.apple.com) and click on *Create Your Apple ID* on the top right of the screen to create an Apple ID. 
  3. Install [Xcode](https://developer.apple.com/xcode/) on your Mac (once again, Xcode is an Apple-developed compiler for Swift). On the site, you will find that there are 2 downloading options: *Download from Website* and *Download from Mac App Store*. For beginner, I'd recommend you choosing the latter (*Download from Mac App Store*) for connivence as it will install the newest version along with all necessary tools. But if you want to choose the version (including both official and beta versions) of Xcode and manually install the additional tool, choose *Download from Website*. To be clear, the version I use for this tutorial is 13.2.1.<sup>1</sup>
  4. [optional] Download this repository. The file *Swift Exercises.playground* provides many demo codes and exercises for you to play around with.
  
Once you have done all of steps, you are ready to code in Swift, which is printing "Hello, World!" to the console as suggested by the tradition.

<sup>1</sup> For more instruction on installing and running Xcode, please visit [Apple Developer: Xcode](https://developer.apple.com/documentation/xcode).

## 3. Hello, world!
### 3.1. Hello, world!

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

### 3.2. Commenting

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

## 4. Data Types and Data Binding

Now, you have successfully write your first code with some comments in Swift. Let's continue on where we left. When you write `print("Hello, world!")`, you ask the compiler to print out a `String` called "Hello, world!". Alternatively, `print(2)` is a function in which the compiler will print out an `Integer` of 2. So, what are String and Integer? Does Swift have more crazy terms than just two of them? When is something assigned as one of those terms? Let's find out.

### 4.1. Data Types

String and Integer are only two of many data types provided by Swift. As stated in the documentation, Swift provides its version of all fundamental C (and Objective-C) data types such as Integer, Double, Float, Boolean, and String. Swift also has powerful versions of the three primary collection types called Array, Set, and Dictionary. In addition, it also has new data types called Optional, Tuple, etc. 

If you are ready, let's dig down on each data types. Please noted, in Swift, data types are always written in Pascal case (e.g. Int).

*Acknowledgment: The credit for this part goes to Apple from [their Swift's documentation](https://docs.swift.org/swift-book/LanguageGuide).*

#### a. Integers

*Integers* are whole numbers with no fractional component, such as 42 and -23. 

In Swift, there are two types of integers: `Int` and `UInt`. While Int are signed numbers (positive, zero, or negative), UInt are unsigned one (only positive or zero). Also, Int and UInt are provided in 8, 16, 32, and 64 bit forms and follow a naming convention in which an 8-bit unsigned integer is of type `UInt8`, and a 32-bit signed integer is of type `Int32`. However, in most cases, you don't have to pick a specific size of integer to use in your code as Swift will do that for you. You can check the range of number with `.min` and `.max`.

#### b. Floating-point Numbers

*Floating-point numbers* are numbers with a fractional component, such as 3.14159, 0.1, and -273.15.

In Swift, there are two floating-point number types: `Double` and `Float`. While Double  represents a 64-bit floating-point number, Float only represents 32-bit one. Therefore, Double is preferred since it has a precision of at least 15 decimal digits, compared to Float with 6 decimal digits. 

#### c. Booleans

*Boolean* values are referred to as logical, because they can only ever be true or false. Swift provides two `Bool` constant values, `true` and `false`.

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

Like Array, *Set* is another one of the primary Collection types for storing collections of values. Set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.

The type of a Set is written as `Set<Element>`, where `Element` is the type that the set is allowed to store. Unlike arrays, sets don’t have an equivalent shorthand form.

#### i. Dictionaries

*Dictionary* is the last one of the 3 primary Collection types for storing collections of values. Dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary.

The type of a Dictionary is written in full as `Dictionary<Key, Value>`, where `Key` is the type of value that can be used as a dictionary key, and `Value` is the type of value that the dictionary stores for those keys. You can also write the type of a dictionary in shorthand form as `[Key: Value]`, which is preferable.

### 4.2. Data Binding

Swift **binds data types at compile time**, which makes it a type-safe programming language. In following sections, you will see more about the applications of this type-safe characteristic.

## 5. Constants and Variables

Phew, you passed one of the most exhausting parts of this tutorial. I believe this part will be much easier to grasp. Going along with data types are variables and constants.

Swift uses variables and constants to store and refer to values by an identifying name. While the value of a constant can’t be changed once it’s set, a variable can be set to a different value in the future. In another word, anything declared as variable is *mutable* (can add, remove, or change after declaration). Oppositely, anything declared as constant is *immutable* (cannot do anything with it after declaration).

### 5.1. Naming Convention

For Swift, constant and variable names can contain almost any character except whitespace, mathematical symbols, arrows, private-use Unicode scalar values, or line-and box-drawing characters. This means that even pictographs like emoji `💪` and logographs like Chinese `大` are legal variable/constant name.

However, for universal development, we should use Unicode character. As noted in Swift 3.0 documentation, any Unicode variables/constants should be named in camelCase like `firstVariable`.

One more thing to remember, although numbers may be included elsewhere within the name, a variable/constant cannot begin with a number. For example, `the1stVarible` is a legal name for variable and constant, but `1stvariable` is not.

### 5.2. Declaring Syntax
#### a. Declaration and Initialization

Constants and variables must be declared and initialized before they’re used. You declare constants with the `let` keyword and variables with the `var` keyword, followed by a variable name, equal sign `=`, and the assigning value. However, since most types in Swift are value type, we actually make a copy of the assigning value and pass it into the assigned a variable/constant when declaring or changing a variable/constant. 

The example below will declare name as a variable and age as a constant. 

```swift
/* Example of variable and constant declaration */
var name = "User"    
let age = "10"
```

> If a stored value in your code won’t change, always declare it as a constant. Use variables only for storing values that need to be able to change.

If you want to declare multiple constants/variables at the same time, you can do it on the same line by using commas `,` to separate. The data types of these constants/variables and be mixed. For example, we can declare variables name and age at the same time although name is a String and age is an Integer

```swift
/* Example of a multi-variable declaration of different types */
var name = "User", age = 20
```

As said, you cannot declare a variable without the initialized value. For example:

```swift
var name   // error: unexpected pattern
```

However, in some cases you might want not to store any value in a variable and you can achieve that using explicit annotation, which is introduced in the right below section about [type annotation](#b-type-annotation)

#### b. Type Annotation

In Swift, there are 2 ways of annotating data types: **implicit** and **explicit**. While implicit annotation means the compiler will do the job for you, explicit annotation requires manual data type specification. Nevertheless, either ways will **specify data type strongly and statically**. This means you cannot change it after declaration unless using explicit conversion of related type. I will extend this statement in further section.

For now, let's focus on type annotation only. As you see in many examples above, Swift has implicitly declared the data type for you. However, you can explicitly annotate the data types and your type annotations will override the default one. To explicitly declare a variable/constant's type, you use a colon `:` after the variable/constant's name, following with a space and the name of the type to use. Another way is to put the data type and wrap the content inside a parentheses `Int(something)`. We will definitely see the latter often as it is applied to do explicit conversion.

```swift
/* Example of a explicit type annotation and type conversion */ 
var welcomeMessage: String = "Welcome"
var age = Int("20") // 20
```

Moreover, you can set a variable to have `nil` value by explicitly annotating Optionals type (putting the question mark `?` after the associated data type). You can also assign the value `nil` (meaning no value) to the variable, yet this step is optional.

```swift
/* Example of Optional variable declaration */
var name : String?     // Set name to either have a value or not at all
var age : Int? = nil   // This is equivalent to the first line
```

Last but not least, manual type annotation can reduces wrong data type re-assignment and make your debug easier. This is very useful for number-like variables calculating operators, which you will learn in the following section regarding [arithmetic operators](#62-arithmetic) 


## 6. Basic Operators

An operator is a special symbol or phrase that you use to check, change, or combine values. In Swift, a operator is either unary (single target), binary (two targets), or ternary (three targets).

### 6.1. Assignment

The *assignment operator* `=` assigns the value of the left side with the value of the right side. You can use assignment operator to initialize variable/constant.

```swift
/* Example of a variable assignment */
var name = "Do Duc Quan"
var user = name    // initialize user with name, whose value is "Do Duc Quan"
```

For Tuple, you must have equal number of values on both sides. For example:
```swift
/* Example of a Tuple constant assignment */
let (x, y) = (1, 2)
print(x)   // 1
print(y)   // 2
```

You can also change the value of a variable after declaration. The only condition is that the new value's type must match that of the old one. For example:

```swift
/* Example of correct variable reassignment */
var user = "User"
var name = "Do Duc Quan"
user = name    // re-assign a with b, whose value is "Do Duc Quan"
print(user)    // "Do Duc Quan"

/* Example of incorrect variable reassignment */
var age = 20
user = age // error: cannot assign value of type Int to type String
```

If you want to reassign a related data type value to a variable, you must use explicit conversion. But, if you try to use explicit conversion on Optional unrelated data type, the variable will return to the original value. For example:

```swift
/* Example of correct and incorrect explicitly converted reassignment */
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

### 6.2. Arithmetic

Swift supports the standard arithmetic operators for all number types: addition `+`, subtraction `-`, multiplication `*`, division `/`, and remainder`%`.

However, the result of the calculation differs from each data types. This is because Swift is a strong language that prevent data type from changing, unless by explicit conversion. As a result, the result of a binary integer calculation is always an integer. The same rule is applied to Double and Float binary calculation. Additionally, Swift restricts any arithmetic operator on different data types. For example:

```swift
/* Example of correct and incorrect arithmetic operators */
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
/* Example of a String concatenation using addition operator */
var greeting = "hello, "
greeting = greeting + "world"
print(greeting)   // "hello, world"
```

### 6.3. Compound Assignment

Compound assignment operators is an operator that combine assignment `=` with another operation. One example is the addition assignment operator `+=`.

```swift
/* Example of a String concatenation using compound addition operator */
var greeting = "hello, "
greeting += "world"
print(greeting)  // "hello, world"
```
In the example above, the expression `greeting += "world"` is shorthand for `greeting = greeting + "world"`. Effectively, the addition and the assignment are combined into one operator that performs both tasks at the same time.

And similar to assignment operator, compound assignment operator don’t return a value. 

### 6.4. Comparison

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
/* Examples of comparison operators */
1 == 1   // true 
2 != 1   // true 
2 > 1    // true
2 <= 1   // false 
```

You can also compare two tuples if they have the same type and the same number of values. Tuples are compared from left to right, one value at a time, until the comparison finds two values that aren’t equal. Those two values are compared, and the result of that comparison determines the overall result of the tuple comparison. If all the elements are equal, then the tuples themselves are equal. For example:

```swift
/* Examples of comparison operators on Tuple variables */
(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"
```





