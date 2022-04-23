/**
 * Class Types in Swift
 * Created by Do Duc Quan on 23/04/2022.
 */

// DEFINE CLASS
class Female {
  var name = ""
  var age = 0
  let gender = "female"
}


// CREATE INSTANCES
var person1 = Female()
var person2 = person1


// ACCESS PROPERTIES
var firstAge = person1.age
var firstGender = person1.gender


// CLASS IS REFERENCE TYPE BUT CLASS'S PROPERTIES IS VALUE TYPE
// When assigned a new value to the variable holding the property, the property isn't affected
firstAge = 30
print(firstAge, person1.age, person2.age)    // 30 0 0

firstGender = "male"
print(firstGender, person1.gender)           // male female

// When assigned a new value to the property, related variables isn't affected
firstAge = person1.age
person1.age = 80
print(firstAge, person1.age, person2.age)    // 0 80 80
person2.age = 60
print(firstAge, person1.age, person2.age)    // 0 60 60

// The structure Male isn't affected
var person3 = Female()
print(firstAge, person1.age, person2.age, person3.age)    // 0 60 60 0
