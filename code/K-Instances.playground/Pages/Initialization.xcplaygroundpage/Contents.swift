/**
 * Struct and Class's initialization in Swift
 * Created by Do Duc Quan on 23/04/2022.
 */

// DEFAULT AND MEMBERWISE INITIALIZIERS
struct StudentAppointment {
    var grade : Double?
    var firstGrade : Double = 8
    var secondGrade : Double = 8
}


// CUSTOM AND DELEGATED INITIALIZIERS FOR STRUCT
struct StudentAppointmentStruct {
    var age = 18
    let appointment : String
    
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

// CUSTOM AND DELEGATED INITIALIZIERS FOR CLASS
class StudentAppointmentClass {
    let age = 18
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


// TESTING
// Default and memberwise
var student = StudentAppointment(grade: 9.8, secondGrade: 9.8)
print(student.grade!)       // 9.8
print(student.firstGrade, student.secondGrade)       // 8.0  9.8

// Structure's init
var studentStruct1 = StudentAppointmentStruct()
var studentStruct2 = StudentAppointmentStruct("Thu")
var studentStruct3 = StudentAppointmentStruct(randomInput: "Thu")
var studentStruct4 = StudentAppointmentStruct(randomInput: "Hello")

print(studentStruct1.appointment,     // Tue
      studentStruct2.appointment,     // Thu
      studentStruct3.appointment,     // Thu
      studentStruct4.appointment)     // Tue

// Class's init
class StudentAppointmentSubClass : StudentAppointmentClass {
}
var studentClass1 = StudentAppointmentSubClass()
var studentClass2 = StudentAppointmentSubClass("Thu")
var studentClass3 = StudentAppointmentClass(randomInput: "Thu")
var studentClass4 = StudentAppointmentClass(randomInput: "Hello")

print(studentClass1.appointment,      // Tue
      studentClass2.appointment,      // Thu
      studentClass3.appointment,      // Thu
      studentClass4.appointment)      // Tue
