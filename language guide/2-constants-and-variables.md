# Constants and Variables

Now, you have successfully write your first code with some comments in Swift. Let's continue with data types are variables and constants.

Swift uses variables and constants to store and refer to values by an identifying name. While the value of a constant can't be changed once it's set, a variable can be set to a different value in the future. In other words, anything declared as a variable is *mutable* (can add, remove, or change after declaration). Oppositely, anything declared as a constant is *immutable* (cannot do anything with it after declaration).

### Table of Content

1. [Naming Convention](#1-naming-convention)   
2. [Declaring Syntax](#2-declaring-syntax)   

## 1. Naming Convention

For Swift, constant and variable names can contain almost any character except whitespace, mathematical symbols, arrows, private-use Unicode scalar values, or line-and box-drawing characters. This means that even pictographs like emoji `💪` and logographs like Chinese `大` are legal variable/constant names.

However, for universal development, we should use the Unicode character. As noted in Swift 3.0 documentation, any Unicode variables/constants should be named in camelCase like `firstVariable`.

One more thing to remember, although numbers may be included elsewhere within the name, a variable/constant cannot begin with a number. For example, `the1stVarible` is a legal name for variable and constant, but `1stvariable` is not.

## 2. Declaring Syntax
### a. Declaration and Initialization

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


### b. Type Annotation

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

