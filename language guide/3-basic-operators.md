# Basic Operators

### Table of Content
1. [Assignment](#1-assignment)   
2. [Arithmetic](#2-arithmetic)   
3. [Compound Assignment](#3-compound-assignment)   
4. [Comparison](#4-comparison)   
5. [Logical](#5-logical)   
6. [Range](#6-range)   

## 1. Assignment

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

## 2. Arithmetic

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

## 3. Compound Assignment

A compound assignment operator is an operator that combines assignment `=` with another operation. One example is the addition assignment operator `+=`.

```swift
// Example of a String concatenation using compound addition operator

var greeting = "hello, "
greeting += "world"
print(greeting)  // "hello, world"
```
In the example above, the expression `greeting += "world"` is shorthand for `greeting = greeting + "world"`. Effectively, the addition and the assignment are combined into one operator that performs both tasks simultaneously time.

And similar to the assignment operator, the compound assignment operator doesn't return a value. 

## 4. Comparison

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

## 5. Logical

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

On top of that, logical operators use [short-circuit evaluation](4-short-circuit-evaluation.md) to consider its expressions, allowing one to write dirty code without being reported by the compiler.

## 6. Range
Swift includes several range operators, which are shortcuts for expressing a range of values and can be characterized as:

- Closed `...` or Half-Opened `..<`
- Two-Sided `a  b` or One-Sided `a`,`b`

### a. Closed and Half-Opened

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

### b. Two-Sided and One-Sided

| Two-Sided | One-Sided |
| --- | --- |
| `a..b` | `a..` `..b` |
| limited in two directions | limited in one direction and continue as far as possible in the other |

### c. Full version

When declaring a range operator, you must pick one from every two groups above. For example, a range operator can be closed and two-sided or half-opened and one-sided. Below are some examples of range operators.

```swift
..<2     // [...,-2,-1,0,1]
2...     // [2,3,4,5,6,7,...]
2..<6    // [2,3,4,5]
2...6    // [2,3,4,5,6]
```

