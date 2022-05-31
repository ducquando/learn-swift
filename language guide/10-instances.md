# Instances

Like Objective-C, Swift extensively supports object-oriented programming by giving not only one but two types, which are *structure* and *class*.

> Typically, an *instance* of a class is called *object*. However, the more general term *instance* is used since Swift supports structures and classes. 

Unlike other programming languages, Swift doesn't require creating separate interface and implementation files for custom instances. In Swift, you define a structure or class in a single file, and the external interface to that class or structure is automatically made available for other code to use.

### Table of Content

1. [Structures](#1-structures)   
2. [Classes](#2-class)   
3. [Properties](#3-properties)   
4. [Methods](#4-methods)   
5. [Initializations](#5-initialization)     
6. [Deinitialization](#6-deinitialization)   
7. [Inheritance](#7-inheritance)
8. [Property Observers](#8-property-observers)   

## 1. Structures
### a. Definition

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

### b. Instancing

A struct definition is just a blueprint. To use a struct, we need to create an instance of it. 

```swift
// Examples of the Male struct's instance creating statement

var person1 = Male()
let person2 = Male()
```

### c. Property Access

There are three variables in the above Male struct's body: name, age, and gender. When defined within a struct, those variables are called [*properties*](#3-properties). We use the dot `.` symbol to access an instance's property.

```swift
// Examples of person1's property access

var firstAge = person1.age
var firstGender = person1.gender
```

### d. A Value Type

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

## 2. Classes
### a. Definition

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

### b. Instancing and Property Access

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

### c. A Reference Type

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

## 3. Properties

Properties are variables and constants that associate with a particular class or structure. There are two main types of properties in Swift: type and instance. While type properties refer to the type itself, instance properties are associated with instances of a particular type. Instance properties even have two sub-types called stored properties and computed properties, and stored properties also have a lazy and a non-lazy one.

Below are the definitions and examples of those types of properties.

Properties | Definition | Example of Instance type | Example of Type type
---|---|---|---
Non-lazy stored properties | A constant or variable that's stored as part of an instance | `struct X { var firstValue: Int }` | `struct X { static var firstValue: Int }` 
Lazy stored properties | A stored property whose initial value isn't calculated until the first time it's used | `struct X { lazy var importer = DataImporter() }` | `struct X { lazy static var importer = DataImporter() }`
Computed properties | Provide a getter and an optional setter to retrieve and set other properties and values indirectly | `struct X { var center: Double { get {...} set{...} }` or `struct X { var center: Double { return ... } }` | `class X { static var center: Double { get {...} set{...} }` or `class X { class var center: Double { return ... } }`

More information about properties can be found on [Swift book: Properties](https://docs.swift.org/swift-book/LanguageGuide/Properties.html).

## 4. Methods
Methods are functions that are associated with a particular type. Both class and structure can contain methods in their body. 

> A major difference from C and Objective-C is that structures in Swift can define methods. 

### a. Instance Methods

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

In the above example, we implement the student appointment on different types. Because structures are value types, the properties can't be modified from within its instance methods by default. If we want a method to modify the structure's properties, we must explicitly set that method to `mutating`. In the case of class, this keyword can (in fact, must) opt-out because class is a reference type.

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

### b. Type Methods

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

### c. Built-in functions

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

## 5. Initialization

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

### b. Memberwise Initializers

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

### c. Custom Initializers

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

### d. Initializer Delegation

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

## 6. Deinitialization

Besides initialization, instances of class types can also allow *deinitialization*. You write deinitializers with the `deinit` keyword, similar to how initializers are written with the `init` keyword. The deinitializer doesn't take any parameters and is written without parentheses. Deinitializers are only available on class types.

```swfit
// Skeleton of a deinitializer

deinit {
	// perform the deinitialization
}
```

A *deinitializer* is called immediately and automatically before a class instance is deallocated. Therefore, the programmer does not have to manually use the deinitializer. Moreover, if one explicitly writes a deinitializer, they won't be able to call it out themselves.

Regarding inheritance, a superclass deinitializer is inherited by its subclasses, and the superclass deinitializer is called automatically at the end of a subclass deinitializer implementation. Superclass deinitializers are always called, even if a subclass doesn't provide its own deinitializer. If you are interested in deinitialization, there is a comprehensive example of [Deinitializers in Action] (https://docs.swift.org/swift-book/LanguageGuide/Deinitialization.html) from the Swift book.

## 7. Inheritance

> Only class can inherit other class's methods and properties.

### a. Subclass and superclass

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

### b. Overriding

As you see above, an overridden method in the subclass must be given the `override` attribute. Doing so clarifies the intention to provide an override rather than a mistake. The `override` keyword also prompts the Swift compiler to check that the overriding class's superclass has a matching declaration. 

Nothing in the superclass body can be overridden, so one must be careful. Some of those that can be modified are:

- Methods (both instance and type)
- Property Getters and Setters (but the property itself cannot be overridden)
- and Property observers

Furthermore, the keyword `super` can (only) be used in the overriding method, property, or subscript to call the superclass version of that method. It is how Swift deals with overloading methods in inheritance. In the above example, we use the `super.increaseSalary()` super method in the overridden `increaseSalary()` method to make the salary increases 400 (300+100) instead of 300.

Nevertheless, overriding behavior can be prevented by marking the method/property, class, or structure as `final`. Any attempt to override a final is reported as a compile-time error.

## 8. Property Observers

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