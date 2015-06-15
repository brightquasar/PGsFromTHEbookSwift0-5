import UIKit

func returnFifteen() -> Int {
  var y = 10
  func add() {          // a nested func
    y += 5
  }
  add()                 // used
  return y
}
returnFifteen()

/*
Functions can be nested (above). Use nested functions to organize code in a function that is long or complex. 

And, Functions are a first-class type -- a function can return another function as its return value (below).

A function can take another function as one of its arguments. (if the func returns expected type)
*/

func makeIncrementer() -> (Int -> Int) {  // is this odd syntsx the syntax to return a func? Yes it refers to addOne whoes ..
  func addOne(number: Int) -> Int {      // ... signature is of (number: Int) -> Int
    return 1 + number
  }
  return addOne        // the question below, may be aswered by this line, wherein, we return a func, rather than a value vvvv
}                     //                    ^^                                                                              ^^
//makeIncrementer(7) // cannot do this -- Why would a naked func, albiet with a nested func, need to be "instantiated" b4 use??

var increment = makeIncrementer()
increment(7)
println("\n" + "\(increment(7))"); println("\n\(increment(8))"); println("\n" + "\(increment(9))")  // does work either way

//----------------------------------------------------

func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {  // two returns? No, condition arg refers to lessThanTen
  for item in list {
    if condition(item) {   // conditon seems to be a func created out of thin air -- but is, in fact, the lableName of the func
      return true         // ... lessThanTen which was passed in as arg: condition: Int -> Bool   ...
    }                    // ... a fairly conveluted little arrangement:] If one is seeing such for the first time:] 
  }
  return false
}

func lessThanTen(number: Int) -> Bool {   //  it does return a bool (number < 10) evaluates to true or false
  return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)      // func can take another func as an argument if the func returns expected type

// see next PG 5th