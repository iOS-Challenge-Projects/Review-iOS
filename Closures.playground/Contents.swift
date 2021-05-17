import UIKit


//Closures are anonymous functions that can be pass around other functions (Cloausres = Blocks in Objective-C)

func calculator(n1: Int, n2:Int, operation: (Int,Int)->Int )-> Int{
    return operation(n1,n2)
}



func add(no1: Int, no2:Int)-> Int{
    return no1 + no2
}

func multiply(no1: Int, no2:Int)-> Int{
    return no1 * no2
}

//1.Convert abode func into a closure
//{ (no1: Int, no2:Int)-> Int in
//    return no1 * no2
//}


//2.Pass the closure as the input for operation
//calculator(n1: 2, n2: 3, operation: { (no1: Int, no2:Int)-> Int in
//    return no1 * no2
//})

//2a.In the closure we can use type in inference so is not necesary to specify Int type and we can also remove the return keyword
//calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 * no2})

//3.Anonumus parameters, replace the "(no1, no2) in" and use the $ sign with the position of the parameter ex $0
//let result = calculator(n1: 2, n2: 3, operation: { $0 * $1})
//print(result)

//4.Trailing closure, as a rule if the last parameter in the function is a closure we can ommit the parameter name "operation" and just use {$0 * $1}
//let result = calculator(n1: 2, n2: 3){$0 * $1}
//print(result)
//
//
//let array = [6,2,3,9,4,1]
//
//let x = array.map{"\($0)"}//create a new array where the int's has become strings
//print(x)
//print(array.filter{$0 > 5})//Filter the array to include only ints higher than 5


//var thing = "cars"
//
//let closure = { [thing] in
//  print("I love \(thing)")
//}
//
//thing = "airplanes"
//
//closure()
//
//func refFunc(_ value: inout String){
//    value = "Fritz"
//}
//refFunc(&thing)
//print(thing)
//
//print(2%5)


var arr1 = [1,2,3,4,5]
var ar2 = [9,7,6,5,4]

var total = arr1.reduce(0, +) + ar2.reduce(0, +) 

print(total)

