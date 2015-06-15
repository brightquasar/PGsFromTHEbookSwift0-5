import UIKit

let interestingNumbers = ["Primes": [3,5,777], "Square": [1,4,9,16,25,99], "Ricks": [42,55,63,32,3,89]]
var largest = 0
var kindOfNumber = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            kindOfNumber = kind
        }
    }
}
print("\(largest) is of type \(kindOfNumber)")

func sumAnArbitraryListOfIntegersAndCalculateTheirAverage(integers: Int...) -> (sumOfintegers: Int, Average: Int) {
    var sumOfintegers = 0
    var Average = 0
    var countOfints = 0
    
    for int in integers {
        countOfints += 1
        sumOfintegers += int
    }
    Average = sumOfintegers / countOfints
    return (sumOfintegers, Average)
}
let (Total, Average) = sumAnArbitraryListOfIntegersAndCalculateTheirAverage(1,2,3,4)

print("The sum is \(Total), and the average is \(Average)")


func sumAnArbitraryListOfDoublesAndCalculateTheirAverage(doubles: Double...) -> (sumOfD: Double, Average: Double) {
    var sumOfD = 0.0
    var Average = 0.0
    var countOfD = 0.0
    
    for D in doubles {
        countOfD += 1.0
        sumOfD += D
    }
    Average = sumOfD / countOfD
    return (sumOfD, Average)
}
let (Total2, average) = sumAnArbitraryListOfDoublesAndCalculateTheirAverage(1.0,2.0,3.0,4.0,66.324)

print("The sum is \(Total2), and the average is \(average)")

