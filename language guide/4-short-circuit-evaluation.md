# Short-circuit Evaluation

*Short-circuiting* is a programming concept by which the compiler skips the execution or evaluation of some sub-expressions in a logical expression. The compiler stops evaluating the further sub-expressions as soon as the value of the expression is determined.

Specifically, if the first expression fixes the overall result (e.g. `true || ...`, `false && ...`), there is no need to execute other expressions. Additionally, the parenthesis `()` does not prevent short-circuit from happening. For example, `true || (true && false)` will short-circuit as true because the leftmost value is `true`, so there is no need to evaluate the rest.

Short-circuit is used to optimize run time, yet it may cause confusion if another expression is a dirty code or a supposed-to-run function. There are few clear cases of dirty code that Swift can catch during compile time, yet most cases will not be detected. For instance, you cannot run the following codes:

```swift
// Example of dirty codes caught in compile time

print(true || ("dar" == 9))   // error: cannot compare String with Int
print(true || 9 / 0 == 0)     // error: cannot divide by 0
```

However, the following code will be run successfully, which may lead to program vulnerability.

```swift
// Example of dirty codes NOT caught because of short-circuiting

var zero = 0
print(true || 9 / zero == 0)     // true
```

As you can see, the program will print out "true" and won't report any error in the code. This is because the above code is not lexically wrong, so it will be passed to run time without being caught in the compile time. The code will be short-circuited in run time, leading to the error never being reported. Therefore, one must be very careful of short-circuiting in any form.