#  The Basics

The journey to Swift begins.

### Table of Content
- [1. Hello, world!](#1-hello-world)  
- [2. Commenting](#2-commenting)  
- [3. Data Types](#3-data-types)  
- [4. Data Binding](#4-data-binding)  

## 1. "Hello, world!"

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

## 2. Commenting

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

## 3. Data Types

Swift provides its version of all fundamental C (and Objective-C) data types such as Integer, Double, Float, Boolean, and String. Swift also has powerful versions of the three primary collection types: Array, Set, and Dictionary. In addition, it also has new data types called Optional, Tuple, etc. 

If you are ready, let's dig down on each data type. Please note, in Swift, data types are always written in the Pascal case (e.g., Int).

### a. Integers

*Integers* are whole numbers with no fractional component, such as 42 and -23. 

In Swift, there are two types of integers: `Int` and `UInt`. While Int is a signed number (positive, zero, or negative), UInt is an unsigned one (only positive or zero). Also, Int and UInt are provided in 8, 16, 32, and 64-bit forms and follow a naming convention in which an 8-bit unsigned integer is of type `UInt8`, and a 32-bit signed integer is of type `Int32`. However, in most cases, you don't have to pick a specific integer size in your code, as Swift will do that for you. You can check the number range with `.min` and `.max`.

### b. Floating-point Numbers

*Floating-point numbers* are numbers with a fractional component, such as 3.14159, 0.1, and -273.15.

In Swift, there are two floating-point number types: `Double` and `Float`. While Double represents a 64-bit floating-point number, Float only represents a 32-bit one. Therefore, Double is preferred since it has a precision of at least 15 decimal digits, compared to Float with 6 decimal digits. 

### c. Booleans

*Boolean* values are considered logical because they can only ever be true or false. Swift provides two and only two `Bool` constant values: `true` and `false`. Any non-Boolean values cannot be substituted for Bool.

For example, `True`, even though it looks like `true`, is not a valid Bool type in Swift. Moreover, while some languages such as Python and JavaScript interpret `0` as `false` and other integers as `true`, Swift prevents this. In fact, it will prompt a compile-time error if someone tries to do that.

### d. Strings and Characters

A *String* is a series of characters, such as "hello, world" or "albatross". The contents of a `String` can be accessed in various ways, including as a collection of `Character` values. 

You can include predefined String values within your code as string literals and multiline string literals. While a string literal is a sequence of characters surrounded by double quotation marks `"`, a multiline string literal is a sequence of several-line-spanned characters surrounded by three double quotation marks `"""` with a line break.

### e. Tuples

*Tuples* group multiple values into a single compound value. The values within a tuple can be of any type and don't have to be of the same kind. You can create tuples from any permutation of kinds, and they can contain as many different kinds as you like. Nothing stops you from having a tuple of type `(Int, Int, Int)`, `(String, Bool)`, or any other permutation you require.

### f. Optionals

You use *Optionals* in situations where a value may be absent. An optional represents two possibilities: Either there is a value, which you can unwrap the optional to access that value, or there isn't a value. Optional is indicated by the question mark `?` followed after a data type. You can also find Optional in the explicit conversion of unrelated data types.

### g. Arrays

*Array* is one of the primary Collection types for storing collections of values. Array stores values of the same type in an ordered list. The exact value can appear in an array multiple times at different positions. 

The type of an Array is written in full as `Array<Element>`, where `Element` is the type of values the array is allowed to store. You can also write an array's type in shorthand form as `[Element]`, preferable.

### h. Sets

Like Array, *Set* is another primary collection type for storing collections of values. Set holds distinct values of the same kind in a Collection with *no defined ordering*. You can use a Set instead of an array when the order of items isn't essential or when you need to ensure that a thing only appears once.

The Set type is written as `Set<Element>`, where `Element` is the type that the set is allowed to store. Unlike arrays, Sets don't have an equivalent shorthand form.

### i. Dictionaries

*Dictionary* is the last one of the 3 primary Collection types for storing collections of values. Dictionary stores associations between keys of the same type and values in a Collection with *no defined ordering*. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary.

The type of a Dictionary is written in full as `Dictionary<Key, Value>`, where `Key` is the type of value that can be used as a dictionary key, and `Value` is the type of value that the dictionary stores for those keys. You can also write the kind of a dictionary in shorthand form as `[Key: Value]`, which is preferable.

### k. Pointers

If you have experience with any C-related programming languages, you may know that these languages use pointers to refer to addresses in memory. Although Swift does not support direct pointer, it offers an indirect way using reference types.

## 4. Data Binding

Swift **binds data types at compile time**, whichProperty Accessment makes it a type-safe programming language. In the following sections, you will see more about the applications of this type-safe characteristic.

