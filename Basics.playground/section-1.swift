/**
* The Basics
*/

let kMax = 4
// kMax = 5 <- Cannot assign a let value

var count = 0



for i in 0..10 {
    count += 1
}

let floatNum = 3.14
let intNum : Int = Int(floatNum) // Uset Type(otherType) to cast


typealias ShueSize = UInt8 // Create aliases

let shue : ShueSize = 11
println("Shue Size Min: \(ShueSize.min) Max: \(ShueSize.max)")

typealias StringAlias = String // Aliasis works for any object

var aString : StringAlias
aString = "Hello"

// Tuples. Objects of composed types

var touple = (404, "File Not Found")
let(code, description) = touple
println("Code: \(code), desc: \(description)")

let(codeOnly, _) = touple // Use underscores to skip unwanted touples
let descOnly  = touple.1
println("Code: \(codeOnly), desc: \(descOnly)")

var namedTouple = (code: 404, description: "File Not Found")
namedTouple.code = 403
let namedCode = namedTouple.code


// Optionals
var aNumber : Int?
aNumber = 10

if aNumber {
    let optValue = aNumber
    if optValue { /**/ }
    let realValue = aNumber!
    // if realValue { /**/ } // cannot because ! unwraps the ?
}

var bNumber : Int
/* Cannot do this because bNumner is not of type Int?
if bNumber { /* Do something*/ }
*/

if let cNumber = aNumber {
    /* cNumber is = to aNumber! */
}

let dNumber : Int! = 10
if dNumber { /* Do something*/ }

assert(dNumber, "dNumber need to be assigned")



/**
* Basic Operands
*/

var i = 1
i++
++i
var a = true
let j = 10
var d = a ? i : j

Float(i) * 0.5 // operands need to be of the same type

// if i = j {} not allowed becasue assignment doesn't return value

let compoundString = "Hello " + "World!"

// Reminders
let reminder = 9%2
let floatReminder = 8%2.5

// Range Operators

let range = 0..5
let fullRange = 0...5
for index in range { /* Do something with index */ }

