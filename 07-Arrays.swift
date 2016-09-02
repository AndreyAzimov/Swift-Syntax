/*
Arrays are value type

let - imuttable array
var - muttable array

*/

import Foundation

let arrayConst: [String] = ["a", "b", "c"]
var arrayVar: [String] = ["a", "b", "c"]

arrayConst.count
arrayConst.isEmpty

arrayVar += arrayConst
arrayVar += ["d"]
arrayVar.append("e")

arrayVar[0] = "1" //access by subscript
arrayVar[1..<2] = ["0"] //replace 1,2,3 element on 0
arrayVar.insert("-", atIndex: 2) //replace elent on index
arrayVar.removeAtIndex(3) //remove elemnt and shift left
arrayVar

let test = [Int](count: 10, repeatedValue: 100) //Array generator with same element value

let money = [100, 1, 5, 20, 1, 50, 1, 1, 20]

var sum = 0


//Variant 1
for i in 0..<(money.count) {
    print("[\(i)]: \(money[i])")
    sum += money[i]
}

sum
sum = 0
print("")

//Variant 2
var indexx = 0
for element in money {
    print("[\(indexx)]: \(element)")
    sum += element
    ++indexx
}
sum
sum = 0
print("")

//Variant 3: USE IT!
for (index, element) in money.enumerate() {
    print("[\(index)]: \(element)")
    sum += element
}
sum
print("")


//-----------------------------

//Homework

//1.1

print("\t\t\t\tTask 1.1")

let monthDays = [31,28,31,30,31,30,31,31,30,31,30,31]

for month in monthDays {
    print(month)
}

//1.2

print("\t\t\t\tTask 1.2")

let monthsNames = ["January", "Fabruary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for (i, element) in monthDays.enumerate() {
    print("\(monthsNames[i]): \(element)")
}

//1.3

print("\t\t\t\tTask 1.3")

var monthTuple = [(String, Int)]()

//Array fill
for i in 0..<monthsNames.count {
    var month = (name: monthsNames[i], days: monthDays[i])
     monthTuple.append(month)
 }

 for (i, month) in monthTuple.enumerate() {
     print("\(monthTuple[i])")
 }

 print("")

//1.4

print("\t\t\t\tTask 1.4")

var index = monthsNames.count-1

for element in monthsNames {
    print("\(element): \(monthDays[index])")
    --index
}

//1.5

print("\t\t\t\tTask 1.5\n")

let date = (day: 16, month: 5)

sum = 0

for i in 0..<(date.month-1) {
    sum += monthDays[i]
}

sum += date.day-1

let monthName = monthsNames[date.month-1]

print("\(sum) days remain to my birthday \(date.day) of \(monthName)")

//2

print("\n\t\t\t\tTask 2\n")
let intArray: [Int?] = [10, nil, 100, nil, 1000]
sum=0

//Optional binding

for element in intArray{
    if let a = element{
        sum += a
    }
}

print ("Optional binding sum: \(sum)")
sum = 0

//Forced unwrapping

for element in intArray {
    if element != nil {
        sum += element!
    }
}
print ("Forced unwrapping sum: \(sum)")
sum = 0

//Operator ??

for element in intArray {
    let element = element ?? 0 //Can give name to local const as global const
    sum += element
}
print ("Operator ??: \(sum)")


//3

print("\n\t\t\t\tTask 3\n")

let alphabet = "abcdefghigklmnpqrstuvwxyz"
var alphabetArray = [String]()

for char in alphabet.characters {
    alphabetArray.insert(String(char), atIndex: 0) //shift right
}

print("Reversed array: \(alphabetArray)", terminator: "")
