# learn-swift

A tutorial on how to use Swift to create iOS application

### Table of content
[1. General Information](#1-general-information)  
[2. Getting Started](#2-getting-started)    
[3. The Basics](#3-the-basics)  
  [3.1. Hello, world!](#31-hello-world)  
  [3.2. Comment](#32-comment)  
  [3.3. Variables](#33-variables)  
    [3.3.1. Declaring Syntax](#331-declaring-syntax)  
    [3.3.2. Naming Convention](#332-naming-convention)  
    [3.3.3. Types](#333-types)  
[4. Basic Operators](#4-basic-operators)  
  [4.1. Calculation](#41-calculation)  
  [4.2 Comparison](#42-comparison)  
  
  
## 1. General Information

Swift was *created on December 3, 2015, by Apple* on the idea of an easy, interacting but powerful programming language for anyone to learn, even if you do not have any prior experience with coding.

Since Apple creates Swift, they require that developers *use Swift to make app for their operating systems* such as iOS, iPadOS, and MacOS. Apple also creates a paired compiler to run Swift code, which is named Xcode. You will find Xcode hard-to-use at first, but it will become mush easier and more powerful when continue being used. Additionally, SwiftUI, an UI development tool intergrated in Xcode, is made in a way that runs and previews the code’s result directly on an Apple device instead of a console or pop-up window like Python does.

There are many resources for developers who are investigating Swift. To find general information, you can go to [Apple Developer: Swift Overview](https://developer.apple.com/swift/); or you can visit [Swift's homepage](https://www.swift.org) for more detailed information. If you are first-time programmer, Apple has an app called [Swift Playground](https://developer.apple.com/swift-playgrounds/), which offers fun and interacting lessons on coding and building apps using Swift. Like other programming languages, Swift also has a detailed [documentation](https://docs.swift.org/swift-book/) and a public source code hosted on [Apple’s GitHub](https://github.com/apple) in case one wants to dig down into.


## 2. Getting Started

Let's get the ball rolling, aren't we?
To code in Swift, you have to:
  1. Have a Mac (Swift cannot be run from a Window or Linux device)
  2. Have an Apple ID. If you have not created one, please visit [Apple ID](https://appleid.apple.com) and click on *Create Your Apple ID* on the top right of the screen to create an Apple ID. 
  3. Install [Xcode](https://developer.apple.com/xcode/) on your Mac (once again, Xcode is an Apple-developed compiler for Swift). On the site, you will find that there are 2 downloading options: *Download from Website* and *Download from Mac App Store*. For beginner, I'd recommend you choosing the latter (*Download from Website*) for convinience as it will install the newest version along with all necessary tools. But if you want to choose the version (including both official and beta versions) of Xcode and manually install the additional tool, choose *Download from Website*. To be clear, the version I use for this tutorial is 13.2.1.<sup>1</sup>
  4. Launch Xcode once it is installed successfully.

Once you have done all of steps, you are ready to code in Swift, which is printing "Hello, World!" to the console as suggested by the tradition.

<sup>1</sup> For more instruction on installing and running Xcode, please visit [Apple Developer: Swift Overview](https://developer.apple.com/documentation/xcode).

## 3. The Basics
### 3.1. Hello, world!

```swift
print("Hello, world!")
```

### 3.2. Comment

```swift
// This is a comment
```
You can also comment at the end of each line
```swift
print("some texts") // This is another comment
```

```swift
/* This is another comment,
but it spreads over many lines
*/
```

### 3.3. Variables
#### 3.3.1. Declaring Syntax

```swift
var firstVariable = "User"
let secondVariable = "10"
```

You cannot declare a variable without the initialized value
```swift
var firstVariable // error: unexpected pattern
```

```swift
var firstVariable = "User"
firstVariable = "Do Duc Quan" // re-assign firstVariable with "Do Duc Quan"
print(firstVariable) // "Do Duc Quan"
```

```swift
let secondVariable = 10
secondVariable = 20 // error: cannot assign to value: 'secondVariable' is a 'let' constant
```

#### 3.3.2. Naming Convention
`firstVariable`

`1stvariable` // error: expected pattern



#### 3.3.3. Types

## 4. Basic Operators
### 4.1. Calculation
### 4.2 Comparison






