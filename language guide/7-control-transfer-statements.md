# Control Transfer Statementss

Control transfer statements change the order in which your code is executed by transferring control from one piece of code to another. Swift has three important control transfer statements: `continue`, `break`, and `fallthrough` related to the control flow structures.

<table>
<thead>
  <tr>
    <th>continue</th>
    <th>break</th>
    <th>fallthrough</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Skip the current iteration and moves to the next one</td>
    <td>Terminate the entire control flow statement immediately</td>
    <td>Continue the program execution to the next case, regardless of matching control expression</td>
  </tr>
  <tr>
    <td>Used in all iteration control statements (for-in, while)</td>
    <td>Used in all iteration control statements (for-in, while) and selection control statement (switch)</td>
    <td>Used in selection control statement (switch)</td>
  </tr>
  <tr>
    <td colspan="2">Provide vulnerabilities on code block since the rest of code is ignored.<br>More dangerous than a short circuit.</td>
    <td>Provide vulnerabilities on code block since two (or more) cases are executed instead of only one</td>
  </tr>
  <tr>
    <td colspan="2">Have effect on the innermost in case of nested control statement. However, can be told to have effect on a specific statement using label.</td>
    <td>Have effect on the current case and one case right below it</td>
  </tr>
</tbody>
</table>

Below are some examples of some control transfer statements.

```swift
// Example of continue statement in for-in loop

for i in 0...5 {
    if i % 2 == 0 {   // skip even number
        continue
    }
    print(i)          // print odd number only
}
// 1
// 3
// 5
```

```swift
// Example of break statement in while loop

var num = 20
while true {
    if num % 2 == 1 {   // terminate if odd number
        break
    }
    num += 1            // increase by 1
}
print(num)              // 21


// Example of break statement in switch

var num = 20
switch num {
case ...5:
    num = 5
case ...10:
    num = 10
case ...15:
    num = 15
default:        // it gets here
    break       
}
print(num)      // 20 - unchanged
```

```swift
// Example of fallthrough in switch

var num = 10
switch num {
case 15..<20:
    num = 20
case 10..<15:    // it gets here
    num = 15
    fallthrough
case 5..<10:     // then fall into here
    num = 10
case ..<5:       // does not get here
    num = 5
default:
    break
}
print(num)       // 10
```

