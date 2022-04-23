/**
 * Structure Types in Swift
 * Created by Do Duc Quan on 23/04/2022.
 */

// DEFINE STRUCTURE
struct Male {
  var name = ""
  var age = 0
  let gender = "male"
}

    
// CREATE INSTANCES
var person1 = Male()
var person2 = person1

    
// ACCESS PROPERTIES
var firstAge = person1.age
var firstGender = person1.gender

    
// STRUCTURE IS VALUE TYPE
// When assigned a new value to the variable holding the property, the property isn't affected
firstAge = 30
print(firstAge, person1.age, person2.age)    // 30 0 0

firstGender = "female"
print(firstGender, person1.gender)           // female male

// When assigned a new value to the property, related variables isn't affected
firstAge = person1.age
person1.age = 80
print(firstAge, person1.age, person2.age)    // 0 80 0
person2.age = 60
print(firstAge, person1.age, person2.age)    // 0 80 60

// The structure Male isn't affected
let person3 = Male()
print(firstAge, person1.age, person2.age, person3.age)    // 0 80 60 0
