import UIKit

// ١ ٢‎ ٣‎ ٤‎     (Arabic Eastern numerals:  ٠‎ ١‎ ٢‎ ٣‎ ٤‎ ٥‎ ٦‎ ٧‎ ٨‎ ٩‎)
// 一 二 三 四  (simple chinese)
// ๐ ๑ ๒ ๓     (Thai)

let numberSymbol: Character = "三"

var posblIntVal: Int?

switch numberSymbol {
    case "1", "١", "一", "๐":
        posblIntVal = 1
    case "2","٢", "二", "๑":
        posblIntVal = 2
    case "3","٣", "三", "๒":
        posblIntVal = 3
    case "4","٤", "四", "๓":
        posblIntVal = 4
    default:
      break
}

if let intVal = posblIntVal {
    println("The integer value of \(numberSymbol) is \(intVal).")
}
