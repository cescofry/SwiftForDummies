/**
* Functions
*/

func greetings(name: String) -> String {
    return "greeting \(name)"
}

let greeting = greetings("Francesco")

func getResource(url : String) -> (data : String, error : Int) {
    return ("", 404)
}

let resultResource = getResource("http://www.google.com")

func concat(string : String, #toString : String) -> String {
    return string + toString
}

let concatString = concat("Hello ", toString: "world")

func join(string : String, toString: String, join: String = " ") -> String {
    return string + join + toString
}

let joinString = join("Hello", "Worl")


func sum(numbers: Int...) -> Int {
    var tot = 0
    for num in numbers {
        tot += num
    }
    
    return tot
}

let sumNumb = sum(1, 2, 3, 4)


func swap(inout a: Int, inout b: Int) {
    let prevA = a
    a = b
    b = prevA
}

var aa : Int = 10
var ab : Int = 5

swap(&aa, &ab)

func prod(numbers: Int...) -> Int {
    var tot = 1
    for num in numbers {
        tot *= num
    }
    
    return tot
}

var mathFunc : (Int...) -> Int

let isSomething = true
mathFunc = isSomething ? sum : prod // This is assigning a function as var

let resultMath = mathFunc(1, 2, 3, 4)

func funkManyTimes(times : Int, aFunc : () -> ()) {
    for _ in 0..times {
        aFunc()
    }
}

func sayHello() {
    print("hello ")
}

funkManyTimes(2, sayHello)


/**
* Closures
*/

var xxx = 10

let addXXXBlock = {(number : Int) -> Int in
    return number + xxx
}

let numberAdded = addXXXBlock(1)

xxx = 1

let numberAddedAfter = addXXXBlock(1)
