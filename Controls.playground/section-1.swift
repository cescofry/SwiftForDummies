/**
* Controls - if
*/

println("asd ")

let isTrue = true

if isTrue {
    println("This is true")
}

// values with ? are optionals and they can be tested for having an actual value or not.
var number :Int? = 2

if number {
    println("I am a number \(number!)")
    //let number2 = 2 + number // Needs unwrapping. Use !
    let number2 = 2 + number!
}




/**
* Controls - Switch
*/

let test = 5
var result : String

switch test {
case test where (test%4 == 0):
    result = "mod 4"
case test where (test%2 != 0):
    result = "odd"
case 2..5:
    result = "two, three or four"
default:
    result = "many"
}



let testS = "goodbye"

switch testS {
case "hello", "hi":
    result = "ciao"
case "goodbye":
    result = "arrivederci"
    fallthrough
default:
    result += "???"
}


let apoint = (1, 1)

switch apoint {
case (0, 0):
    result = "bang in the center"
case (-1...1, -1...1):
    result = "not bad"
case (let x, 0):
    let lOrR = x > 0 ? "left" : "right"
    result = "better adjust your bearing to the \(lOrR)"
default:
    result = "try again"
}



/**
* While cycles
*/

var x = 0
var y = 0
var squares : Dictionary<Int, Array<Int>> = [:]

linesLoop: while y < 10 {
    var line : Int[] = []
    while x < 10 {
        line.append(x)
        x++
        if y >= 2 && x%y == 0 {
            break
        }
        if y == 7 {
            break linesLoop // this will break the linesLoop
        }
    }
    squares[y] = line
    y++
    x = 0
}


/**
 * Enumerations
 */

enum Compass {
    case North, South, East, West
}

var direction = Compass.North
direction = Compass.East
direction = .West // implies from direction type

switch direction {
case .North:
    println("Going North")
default:
    break
}

enum TrainStatus {
    case OnTime
    case Delay(Int)
}

var status = TrainStatus.OnTime
status = .Delay(10)

switch status {
case .Delay(let time):
    println("The train is delayed by \(time)")
default:
    break
}


enum SpecialCharacters : Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

let aChar : Character = "\t"
let specialChar = SpecialCharacters.fromRaw(aChar)!

switch specialChar {
case .Tab:
    println("adda tab")
default:
    break
}


