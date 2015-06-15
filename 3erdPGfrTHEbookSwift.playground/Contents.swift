import UIKit

//func sumOf(numbers: Int...) -> Int {  // looks like Int... is the same as [Int] ?
// .. but Int... must mean "any number of Ints //
func sumOf(numbers: [Int]) -> Int {  // ... yet they are not the same??
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}

let ricksArray = [42, 597, 12]
let ricksArray2 = [0]
let ricksArray3 = [0, 1, 2]

//sumOf(0)
//sumOf(1, 2)                // these work with the sumOf(numbers: Int...) syntax
//sumOf(42, 597, 12, 4000)   // ... meaning any number of Ints

sumOf(ricksArray2)       // these work with the sumOf(numbers: [Int]) syntax
sumOf(ricksArray)        // an array of Ints "any legnth"
sumOf(ricksArray3)


// ------------------------------ Experiment

func avrOf(numbers: Int...) -> Int {  // ... yet they are not the same??
  var sum = 0
  var counter = 0
  var average = 0
  for number in numbers {
    ++counter
    sum += number
    average = sum / counter
  }
  return average
}

avrOf(0)
avrOf(1, 1, 2, 4)  // average should be == 8/4, or, 2ish
avrOf(42, 598, 12, 4000)