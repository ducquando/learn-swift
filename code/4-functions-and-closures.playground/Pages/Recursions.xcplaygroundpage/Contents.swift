/**
 * Recursion in Swift
 * A recursive function that calculates the the factorial number
 * Created by Programiz: https://www.programiz.com/swift-programming/recursion
 * Adapted and modified by Do Duc Quan on 10/04/2022.
 */

// Example of a return recursion that sums downwards
func sumDownwards(_ x: Int) -> Int {
    if x == 0 {
        return 0
    }
    return x + sumDownwards(x-1)
}

print(sumDownwards(5))  // 15
print(sumDownwards(1))  // 1
print("The factorial of 3 is", factorial(3))  // The factorial of 3 is 6
print("The factorial of 5 is", factorial(5))  // The factorial of 5 is 120

// A recursive function that calculates the the factorial number
func factorial(_ num: Int) -> Int {
  // Base case
  if num == 0 {
    return 1
  }
  // Recursive call
  return num * factorial(num - 1)
}
