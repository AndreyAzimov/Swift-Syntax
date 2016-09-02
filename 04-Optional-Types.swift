/*
Int -> Int. Can't be nil
int? -> Some(Int). Can be nil
Int! -> Int. Can be nil. Use when you need to store nil short time and after that there will be no nil!
*/

var stringNum = "5nil"

let intNum = stringNum.toInt()

//Forced unwrapping

if intNum == nil {
    println("Nil")
} else {
    println(intNum!)
}

//Optional binding

if let temp = intNum {
   println(temp)
} else {
    println("Nil")
}

///Implicitly unwrapped optional

var a: Int! = intNum
println(a)
