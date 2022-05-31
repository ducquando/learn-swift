# Recursions

*Recursion* is a common technique in programming that makes a function call itself. A recursion must include a base case and a recursive call, which is reflected in the below recursive function's skeleton.

```swift
// Skeleton of recursion

func recurse() {
    base case
    
    recurse()
}
```

### Table of Content

1. [Base case](#1-base-case)   
2. [Recursive call](#2-recursive-call)   

## 1. Base case

*Base case* is a name for the recursion's stopping condition. If there isn't any stopping condition, the function will keep calling itself infinitely. One simple way to implement the base case is to use an `if` statement as below:
 
```swift
// Skeleton of recursion

func recurse() {
   if num == 0 {
    	return 1
  	}
    	
    recurse()
}
```

## 2. Recursive call

The *recursive call* is basically a function call put on the function's last line. If the function returns something, the recursive call must be put in the return statement, and the arguments must be changed.

```swift
// Example of a recursive function calculating the factorial value

func factorial(_ num: Int) -> Int {
  // Base case
  if num == 0 {
    return 1
  }
  
  // Recursive call
  return num * factorial(num - 1)
}

print("The factorial of 3 is", factorial(3))  // The factorial of 3 is 6
print("The factorial of 5 is", factorial(5))  // The factorial of 5 is 120
```

In the above example, we use a base case that returns `1` when `num` equals `0`, and a recursive call of `num - 1` to resemble the factorial equation's behavior.