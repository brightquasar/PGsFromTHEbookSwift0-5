import UIKit

//var rick: String? = "Hello"
var rick: String?
rick = nil
println(rick == nil)  // cool bool


var rick2: String? = "Dick"
rick2 = nil
var greet = "hello"
if let name = rick2 {
  greet = "Hello \(name)"
} else {
  //println("\(let name = rick2)")  // can't print "false"
  //println("\(name = rick2)")     // ... in any way.
  println("\(rick2)")  // but CAN print nil.
  println("The optional var rick is nil")
}

//so, the if let found rick2 was nil and therefore did not execute block
// because, the condition evaluated to false, since rick2 was nil.

//switches accept ANY kind of data, and most comparison operations. 

let veg = "red pepper"
switch veg {
  case let x where x.hasSuffix("pepper"):
    let vegComment = "Is it a spicey \(x)?"
  default:  // required, have not yet learned how a switch CAN be "exaustive"
    break
}  // since the case is looking at veg, x got "red pepper"

//let coolNumbers = [ "prime": [2, 3, 5], "fib": [1, 2, 3], "sq": [1,4,9]]  // gave 9
let coolNumbers = [ "Prime": [2, 3, 5,11], "Fib": [1, 2, 3], "Sq": [1,4,9]]

var largest = 0 ; var kindOfNumbr = " "

for (kind, numbr) in coolNumbers {
  for numbr in numbr {
    if numbr > largest {
      largest = numbr
//      for kind in coolNumbers {  // no, I won't even need this.
//        for kind in kind {
          kindOfNumbr = kind
//        }
//      }
    }
  }
/*  for kindOfNumbr in coolNumbers {
    for kind in kind {
      if
    }
  } */  // no, this is not going to be the way, at least, not the easiest way.
}
println("\(largest)" + " is the largest, and, it is of kind: " + "\(kindOfNumbr)")
// WOW, all that from the first 10 pages of the book! (The Swift Programming Language)
