/**
 * Class's inheritance (subclass, superclass) and overiding behavior  in Swift
 * Created by Do Duc Quan on 23/04/2022.
 */

// SUPERCLASS
class Admin {
    var salary = 300
    var department = "Administration"
    func increaseSalary(){
        salary += 100
    }
}


// SUBCLASSES
class Moderator: Admin {
    var location = "remote"
    // Overide increaseSalary()
    override func increaseSalary(){
        salary += 300
        super.increaseSalary()
    }
}
class ModeratorIntern : Moderator {
}
//class Intern : Moderator, Admin {
//} // error: cannot handle multiple inheritance


// MAKE INSTANCES
var employeeAdmin = Admin()
var employeeMod = Moderator()

// ACCESS PROPERTIES
print(employeeAdmin.salary, employeeMod.salary)    // 300 300

// CALL METHODS
employeeAdmin.increaseSalary()
employeeMod.increaseSalary()

print(employeeAdmin.salary, employeeMod.salary)    // 400 700
