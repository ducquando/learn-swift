/**
 * Functions declaration and calling in Swift
 * Created by Do Duc Quan on 10/04/2022.
 */

// FUNCTION DECLARATION
// Example of a function printing the multiplication of 2 inputed numbers
func multiply(num1: Int, num2: Int) {
    print(num1, "times", num2, "equals", num1 * num2)
}

// FUNCTION CALLS
// Examples of the multiply function's calling statements
multiply(num1: 3, num2: 4)        // "3 times 2 equals 12"
multiply(num1: 50, num2: -9)      // "5 times -9 equals -450"
//multiply(num2: 50, num1: -9)    // error: num2 precede num1
//multiply(num1: 20)              // error: missing argument
