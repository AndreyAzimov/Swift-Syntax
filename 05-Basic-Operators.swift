/*

var a = 1
var b = 5
var c: Int

c = a > b ? 5 : 100 // expression ? true : false

println(c)



let text = "123a"
let intText = text.toInt()

//Super unwrapping!
c = intText ?? 0


var sum = 0
sum++ // Postfix operator first return and after that do +1
sum
++sum //Use this! Sufix operator do +1 and after that return

var good = true
good = !good


Logical operators

&& = * - and ( priority higher that '||')
|| = + - or

true && true = true
true && false = false
fasle && true = false
false && fasle = false

true || true = true
true || false = true
false || true = true
false || false = false



0...5
0..<5

*/

//Home work

// 1
let minute = 60
let hour = minute * 60
let day = hour * 24

let january = day * 31
let fabruay = day * 28
let march = day * 31
let april = day * 30
let may = day * (16-1)

let secondsToBirthday = january + fabruay + march + april + may
println("From year's start to my birthday \(secondsToBirthday) sec remain")

//2
let birthdayMonth = 6
let quartal = birthdayMonth / 4 + 1
println("I was born in \(quartal) quartal")

//3
var a = 10
var b = 100
var c = 1000
var d = 20
var e = 5

var a2 = a
var b2 = b
var c2 = c
var d2 = d
var e2 = e

let total1 = a++ + b++ * --c / --d - e--
let total2 = ((a2++) + (((b2++) * (--c2)) / (--d2))) - (e2--)

total1 == total2 ? println("I understood operations priority") : println("I didn't understand operations priority")

//4

let cell = (x:8, y:1)

if cell.x % 2 == cell.y % 2 {
    println("Cell is: ⬛️")
} else {
    println("Cell is: ⬜️")
}






//for y in 1...8 {
//
//    for x in 1...8
//        
//        
//        if x % 2 == 1 && y % 2 == 1 {
//            print("⬛️")
//        } else if x % 2 == 0 && y % 2 == 0  {
//            print("⬛️")
//        } else {
//            print("⬜️")
//        }
//    }
//}






