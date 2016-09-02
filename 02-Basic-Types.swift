
//Homework 2 - Basic Types

println ("Int8 range is: \(Int8.min) to \(Int8.max)")
println ("UInt8 range is: \(UInt8.min) to \(UInt8.max)")
println ("Int16 range is: \(Int16.min) to \(Int16.max)")
println ("UInt16 range is: \(UInt16.min) to \(UInt16.max)")
println ("Int32 range is: \(Int32.min) to \(Int32.max)")
println ("UInt32 range is: \(UInt32.min) to \(UInt32.max)")
println ("Int64 range is: \(Int64.min) to \(Int64.max)")
println ("UInt64 range is: \(UInt64.min) to \(UInt64.max)\n")

let intNum = 10
let doubleNum = 0.12345678912345
let floatNum: Float = 0.12345

let intSum = Int(Double(intNum) + doubleNum + Double(floatNum))
let doubleSum = Double(intNum) + doubleNum + Double(floatNum)
let floatSum = Float(intNum) + Float(doubleNum) + floatNum


if Double(intSum) < doubleSum {
    println("Double is more accurate than Interger")
} else {
    println("Integer is more accurate than Double")
}

if Float(intSum) < floatSum {
    println("Float is more accurate than Integer")
} else {
    println("Integer is more accurate than Float")
}

if Double(intSum) < doubleSum {
    println("Double is more accurate than Float")
} else {
    println("Float is more accurate than Double")
}
