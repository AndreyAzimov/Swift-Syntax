import Foundation

var string = "super string "
string.isEmpty

let ch: Character = "b"

for c in "Hello world" {
    println(c)
}

string.append(ch)
(string as NSString).length

let heart = "\u{1F498}"
let letter2 : Character = "ъ\u{301}\u{20dd}"

string += "\(letter2)"

count(string) // ъ́⃝ as 1 symbol
(string as NSString).length // ъ́⃝ as 3 symbol

string.hasPrefix("super")
string.hasSuffix("ъ\u{301}\u{20dd}")

//Homework

//1
import Foundation

let str1 = "100"
let str2 = "100one"
let str3 = "one100"
let str4 = "one100one"
let str5 = "1000"

let n1 = str1.toInt() ?? 0
let n2 = str2.toInt() ?? 0
let n3 = str3.toInt() ?? 0
let n4 = str4.toInt() ?? 0
let n5 = str5.toInt() ?? 0

let sum = n1 + n2 + n3 + n4 + n5

let strNum1 = n1 != 0 ? "\(n1)" : "nil"
let strNum2 = n2 != 0 ? "\(n2)" : "nil"
let strNum3 = n3 != 0 ? "\(n3)" : "nil"
let strNum4 = n4 != 0 ? "\(n4)" : "nil"
let strNum5 = n5 != 0 ? "\(n5)" : "nil"
let strSum = "\(sum)"

let stringInterpolation = "\(strNum1) + \(strNum2) + \(strNum3) + \(strNum4) + \(strNum5) = \(sum)"

let stringConcatination = strNum1 + " + " + strNum2 + " + " + strNum3 + " + " + strNum4 + " + " + strNum5 + " = " + strSum

println(stringInterpolation)
println(stringConcatination)

//2
let ch1 = "\u{1F603}\u{20dd}"
let ch2 = "\u{1F60E}\u{20dd}"
let ch3 = "\u{1F60D}\u{20dd}"
let ch4 = "\u{1F618}\u{20dd}"
let ch5 = "\u{1F621}\u{20dd}"

let str = ch1 + ch2 + ch3 + ch4 + ch5
println("Swift find \(count(str)) elements")
println("Objective-C find \((str as NSString).length) elements")

//3
var letter : Character = "a"
var alphabet = "abcdefghijklmnopqrstuvwxyz"
var lettersCount = 1

for ch in alphabet {
    if ch == letter {
        println("Letter '\(letter)' is \(lettersCount) in alphabet")
    }
    ++lettersCount
}



