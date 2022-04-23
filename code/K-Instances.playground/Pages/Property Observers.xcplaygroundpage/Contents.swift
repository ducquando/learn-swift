/**
 * Property observers in Swift
 * Created by Do Duc Quan on 23/04/2022.
 */

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
