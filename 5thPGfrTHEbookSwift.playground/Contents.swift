import UIKit
/*
Functions are actually a special case of closures: blocks of code that can be called later. The code in a closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it is executed—you saw an example of this already with nested functions. You can write a closure without a name by surrounding code with braces ({}). 

Use "in" to separate the arguments and return type from the body -- seen bwlow the // ----------------------

“EXPERIMENT: Rewrite the closure to return zero for all odd numbers.”
*/
var numbers = [20, 19, 7, 12]
numbers.map({             // numbers is an array of Ints, and, such an object, must have a member called map ???
  (number: Int) -> Int in   // in, being used to separate the arguments and return type from the body (of the closure)
  let result = 3 * number
  return result
})

// ------------------------------------------------------------

println(numbers.map({        // numbers is an array of Ints, and, such an object, must have a member called map ???
  (number: Int) -> Int in   // in, being used to separate the arguments and return type from the body (of the closure)
  let result = 3 * number
  if result % 2 != 0 {
    return 0
  } else {
  return result
  }
})) // Rick was easily able to do the challenge/Experiment, but, the .map and closure syntax etc has Rick in the ... dark

/*
You have several options for writing closures more concisely. When a closure’s type is already known, such as the callback for a delegate, you can omit the type of its parameters, its return type, or both. Single statement closures implicitly return the value of their only statement.

You can refer to parameters by number instead of by name—this approach is especially useful in very short closures. A closure passed as the last argument to a function can appear immediately after the parentheses.
*/

let mappedNumbers = numbers.map({ number in 3 * number })  // feeding numbers.map a new form of closure, stil quite dark
println(mappedNumbers)