/**
 * Struct and Class's methods in Swift
 * Created by Do Duc Quan on 23/04/2022.
 */

// Defining methods
struct StudentAppointmentStruct {
    var appointment : String?
    
    // INSTANCE METHODS
    mutating func makeAppointment() {
        let appointment = "Wed"
        self.appointment = appointment
    }
    mutating func makeAppointment(_ dayInWeek: String) {
        appointment = dayInWeek
    }
    
    // TYPE METHOD
    static func test() {
        print("Struct's type method successfully printed")
    }
}

class StudentAppointmentClass {
    var appointment : String?
    
    // INSTANCE METHODS
    func makeAppointment() {
        let appointment = "Wed"
        self.appointment = appointment
    }
    func makeAppointment(_ dayInWeek: String) {
        self.appointment = dayInWeek
    }
    
    // TYPE METHOD
    class func test() {
        print("Class's type method successfully printed")
    }
}


// Calling methods
var student1 = StudentAppointmentStruct()
var student2 = StudentAppointmentClass()

student1.makeAppointment()
student2.makeAppointment("Mon")
print(student1.appointment!, student2.appointment!)   // Wed Mon

StudentAppointmentClass.test()    // Class's type method successfully printed
StudentAppointmentStruct.test()   // Struct's type method successfully printed

print(student1)
print(student2)
