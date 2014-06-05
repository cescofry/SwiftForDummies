/**
 * Classes
 * They are fully mutable and copy by refence.
 */

class Veicle {
    var numberOfWheels = 0
    
    var veicleDescription : String {
        get {
            return "This is a veicle with \(numberOfWheels) wheels"
        }
    }
    
    @final func run() {
        println("Running")
    }
}

var bicycle = Veicle()
bicycle.numberOfWheels = 2
println(bicycle.veicleDescription)


class Car : Veicle {
    init () {
        super.init()
        self.numberOfWheels = 4
    }
    
    override var veicleDescription : String {
        get {
            return "This is a car. \(super.veicleDescription)"
        }
    }
    
    func startEngine() {
        println("Engine started")
    }
    
    /* Super class used @final on func run. This cannot be override
    override func run() {
        
    }
    */
}
var aCar = Car()
println(aCar.veicleDescription)
aCar.startEngine()


/**
 * Custom inizializers
 */

class Truck : Car {
    
    convenience init() {
        self.init(wheels: 4)
    }
    
    init(wheels: Int) {
        super.init()
        self.numberOfWheels = wheels
    }
}

let truck4 = Truck()

println(truck4.numberOfWheels)

let truck6 = Truck(wheels:6)
println(truck6.numberOfWheels)


/**
 * Structures
 * They are passed by value.
 */

struct Point {
    var x : Double
    var y : Double
    
    var invert : Point {
        return Point(x: -self.y, y: -self.x)
    }
}

let aPoint = Point(x: 2.0, y: 1.0)
let opposite = aPoint.invert


/**
 * Copied by value and by reference
 */

let pointA = Point(x: 1.0, y: 10.0)
var pointB = pointA
pointB.x = 10
println(pointA.x) // It didn't change because structs get copied by value

// pointA.x = 10 Cannot assign var inside a constant structure


let bikeA = Veicle()
bikeA.numberOfWheels = 2

let bikeB = bikeA
bikeB.numberOfWheels = 3

println(bikeA.numberOfWheels) // Did change because class are passed by reference
bikeA.numberOfWheels = 5 // this can be done on const class
// bikeA = bikeB This is an error as ususal

/**
 * Observers
 */

class Test {
    var value : Int = 0 {
        willSet (newValue) {
            println("About to set a new value of \(newValue)")
        }
        didSet {
            println("Just set a new value. Diff: \(value - oldValue)")
        }
    }
}

let test = Test()
test.value = 5
test.value = 4

/**
 * Subscripts
 */

struct Matrix {
    let rows: Int, columns: Int
    var grid : Double[]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        self.grid = Array(count: (rows * columns), repeatedValue: 0.0)
        
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            return self.grid[(column * self.rows) + row]
        }
        set {
            self.grid[(column * self.rows) + row] = newValue
        }
    }
    
}

var matrx = Matrix(rows: 4, columns: 4)
matrx[1,1] = 1.5

println("Matrix value \(matrx[1,1]). Derived \(matrx.grid[4 + 1])")







