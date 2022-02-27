# learn-swift

A tutorial project on using Swift to create iOS apps from CS308 Programming Languages at Fulbright University Vietnam

### Table of content
[1. General Information](#1-general-information)  
[2. Getting Started](#2-getting-started)    
[3. The Basics](#3-the-basics)  
  [3.1. Hello, world!](#31-hello-world)  
  [3.2. Comment](#32-comment)  
  [3.3. Constant and Variables](#33-constant-and-variables)  
    [3.3.1. Declaring Syntax](#331-declaring-syntax)  
    [3.3.2. Naming Convention](#332-naming-convention)  
    [3.3.3. Types](#333-types)  
<!---[4. Basic Operators](#4-basic-operators)  
  [4.1. Calculation](#41-calculation)  
  [4.2 Comparison](#42-comparison) --->
  
  
## 1. General Information

Swift was *created on December 3, 2015, by Apple* on the idea of an easy, interacting but powerful programming language for anyone to learn, even if you do not have any prior experience with coding.

Since Apple creates Swift, they require that developers *use Swift to make app for their operating systems* such as iOS, iPadOS, and MacOS. Apple also creates a paired compiler to run Swift code, which is named Xcode. You will find Xcode hard-to-use at first, but it will become mush easier and more powerful when continue being used. Additionally, SwiftUI, an UI development tool intergrated in Xcode, is made in a way that runs and previews the code’s result directly on an Apple device instead of a console or pop-up window like Python does.

There are many resources for developers who are investigating Swift. To find general information, you can go to [Apple Developer: Swift](https://developer.apple.com/swift/); or you can visit [Swift's homepage](https://www.swift.org) for more detailed information. If you are first-time programmer, Apple has an app called [Swift Playground](https://developer.apple.com/swift-playgrounds/), which offers fun and interacting lessons on coding and building apps using Swift. Like other programming languages, Swift also has a detailed [documentation](https://docs.swift.org/swift-book/) and a public source code hosted on [Apple’s GitHub](https://github.com/apple) in case one wants to dig down into.


## 2. Getting Started

Let's get the ball rolling, aren't we?
To code in Swift, you have to:
  1. Have a Mac (Swift cannot be run from a Window or Linux device)
  2. Have an Apple ID. If you have not created one, please visit [Apple ID](https://appleid.apple.com) and click on *Create Your Apple ID* on the top right of the screen to create an Apple ID. 
  3. Install [Xcode](https://developer.apple.com/xcode/) on your Mac (once again, Xcode is an Apple-developed compiler for Swift). On the site, you will find that there are 2 downloading options: *Download from Website* and *Download from Mac App Store*. For beginner, I'd recommend you choosing the latter (*Download from Mac App Store*) for convinience as it will install the newest version along with all necessary tools. But if you want to choose the version (including both official and beta versions) of Xcode and manually install the additional tool, choose *Download from Website*. To be clear, the version I use for this tutorial is 13.2.1.<sup>1</sup>
  4. [optional] Download this repository if you want some demo codes and exercises.

Once you have done all of steps, you are ready to code in Swift, which is printing "Hello, World!" to the console as suggested by the tradition.

<sup>1</sup> For more instruction on installing and running Xcode, please visit [Apple Developer: Xcode](https://developer.apple.com/documentation/xcode).

## 3. The Basics
At the end of this section, you will understand some basic concepts in Swift such as printing, commenting, and declaring variables. You are also provided a file written in Swift to fiddle with once finish reading.

### 3.1. Hello, world!

Printing in Swift is easy as it can be done with just one line of code, which is `print()`. You don't have to include the semi-colon `;` at the end of each line of code, but you can do that if your want to.

The syntax below will print the phrase "Hello, world!" to the console on separte lines.

```swift
print("Hello, world!")
print("Hello, world!");
```

You can also print other things, like a number or a result of a mathematic calculation, out to the console. The example below will print 2 and 12, respectively, to the console.
```swift
print(2)
print(10+2)
```

### 3.2. Comment

Code is read by other people more frequently than you think. Therefore, we use comments so that other programmers can understand what we write. Since a comment is only visible to humans and gets ignored by computers, you don't have to worry that comment will destroy your code. In fact, you're encouraged to write comments.

There are 2 types of comments in Swift: single-line and multi-line. Single-line comments are often used to explain the logic of a code, and multi-line comments are used to explain a whole set of code.

For single-line comments, use `//` to comment out all the texts that appeared behind it on that line. For example:
```swift
// This is a comment
print("some texts") // This is another comment
```
For multi-line comments, you have to indicate the beginning (marked with `/*`) and the ending (marked with `*/`) of the comment. For example:
```swift
/* This is another comment,
but it spreads over many lines
*/
```

### 3.3. Constant and variables
Swift uses variables and constants to store and refer to values by an identifying name. While the value of a constant can’t be changed once it’s set, a variable can be set to a different value in the future.

#### 3.3.1. Declaring Syntax
Constants and variables must be declared before they’re used. You declare constants with the `let` keyword and variables with the `var` keyword. 
```swift
var name = "User"
let age = 10
```
As said, you cannot declare a variable without the initialized value.
```swift
var name // error: unexpected pattern
```
You can change the value of a variable after declaration. However, the new value's type must match that of the old one.
```swift
var name = "User"
name = "Do Duc Quan" // re-assign name with "Do Duc Quan"
print(name) // "Do Duc Quan"
```
As said, you cannot change the value of a constant. 
```swift
let age = 10
age = 20 // error: cannot assign to value: 'age' is a 'let' constant
```

#### 3.3.2. Naming Convention

For Swift, constant and variable names can contain almost any character except whitespace, mathematical symbols, arrows, private-use Unicode scalar values, or line-and box-drawing characters. However, as noted in Swift 3.0 documentation, the Unicode variable should be named in camelCase like `firstVariable`.

One more thing to note, although numbers may be included elsewhere within the name, a variable/constant cannot begin with a number. For example, `the1stVarible` is legal but `1stvariable` is illegal.


#### 3.3.3. Types

Swift provides its version of all fundamental C (and Objective-C) variables/constant types such as Int, Double, Float, Bool, and String. The syntax for declaring type is: `var variableName : type`. However, it is optional to declare type since Swift will do it automatically in the background. If you want to know more about different types of Swift variables/constants, please visit [Swift Documentation: The Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html).

Now you may have understood all the basics in Swift. It's time to download [Swift Exercises.playground](/SwiftExercises.playground), run it with Xcode and play around with the first exercise called *The Basics*.


<!---## 4. Basic Operators
### 4.1. Calculation
### 4.2 Comparison --->






