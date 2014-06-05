/**
* Strings and Characters
*/

var bString = String()
bString.isEmpty
bString += "Append some text"
bString.isEmpty

for char in bString { /* Do something with char */}

countElements(bString) // This works with any collection

let aFloat = 0.4
let anInt = 1

bString = "\(aFloat) and \(anInt)"

bString = "Hello"
let cString = bString
if bString == cString { /* Do something */}
cString.hasPrefix("Hel")
cString.hasSuffix("lo")
cString.uppercaseString
cString.lowercaseString

/**
* Collections
*/

// Arrays

var shopping : String[] = ["Milk", "Eggs"]
let sameShopping = ["Milk", "Eggs"]
shopping.count == countElements(shopping) // 2
shopping.isEmpty
shopping += "bread"
shopping.append("bisquits")

shopping[0]
shopping[1..3]

shopping.insert("tea", atIndex: 0)
let tea = shopping.removeAtIndex(0)
let bisquits = shopping.removeLast()

for item in shopping { /* Do something with item */}
for (idx, item) in enumerate(shopping) { /* Do something with idx and item */}

shopping = [] // is now an empty array. Same type

var someInts = Int[]()
var doubles = Double[](count:3, repeatedValue:0.0)

// Dictionaries

var airports :Dictionary<String, String> = ["TYO" : "Tokio", "SFO" : "San Francisco"]
airports["LHR"] = "London Heatrow"
airports["TYO"]
let oldSF = airports.updateValue("San Francisco International", forKey: "SFO")
airports["TYO"] = nil // TYO has been removed

for (key, value) in airports { /* Do something with key and value */}

airports.keys
airports.values

airports = [:] // it is now an empty dictionary. same type
