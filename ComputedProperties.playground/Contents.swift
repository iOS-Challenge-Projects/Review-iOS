import UIKit


let pizzaInInches: Int = 10
var numberOfPeople: Int = 6
let slicesPerPerson: Int = 5

//var numberOfSlices: Int = 6

//Computed properties
var numberOfSlices: Int {
    get {//Explicit getter
        return pizzaInInches - 4//This is a getter
    }

    set {//Setter, when we assing a new value to numberOfSlices this is run
        print("Number of slices now has a new value which is \(newValue)")
    }
}
 
var numberOfPizzas: Int {
    get{
        let numberOfPeopleToFeedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleToFeedPerPizza
    }
    
    set{
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}


//numberOfPizzas = 4
//print(numberOfPeople)


var width: Float = 1.5
var height: Float = 2.3
//var areaToCover: Float = 0

var bucketsOfPaint: Int {
    get {//Trigger when we try to read the value of bucketsOfPaint
        let area = width * height / 1.5
        let buckets = (area).rounded(.up)
        return Int(buckets)
    }
    
    set{//Triggered when we set the value of bucketsOfPaint
        let areaToCover = Double(newValue) * 1.5
        print("\(newValue) buckets of paint will cover \(areaToCover) square meters.")
    }
}

bucketsOfPaint = 8

