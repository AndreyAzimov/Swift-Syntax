
/*
Lesson 09 - Switch
    http://vk.com/topic-58860049_31636394

Author: Andrii Azimov
    http://vk.com/azimov.andrey


*/

//_____________LESSON WORK_____________//

println("\n\t Lesson 09 - Switch \n\t")

mainLoop: for _ in 1...10 {
    for i in 1...10 {
        
        if i < 9 {
            continue //code after this not executed. loop goes to next i
        }
        
        if i == 5 {
            println("br")
            break mainLoop //exit from loop
        }
    }
}


let age = 70
let name = "Andrii"

// Switch Int

switch age {
    case 0...16:
        println("School")
        fallthrough //move to next case. ignore next case condition
    
    case 17...22:
        println("University")
    
    case 51:
        println("51")
    
    case 56, 58, 60:
        println("56 or 58")
    
    default: break
}

// Switch String

switch name {
    case "Andrii":
        println("Case Andrii")
    
    case "Andrii" where age < 50: //aditional condition. Also can &&, ||
        println("Case Andrii and age < 50")

default: break

}

// Switch Tuples

let tuple = (name, age)

switch tuple {

    case ("Andrii", 20):println("Anrii 56")
    case ("Andrii", 56):println("Anrii 56")
    
    case (_, let number) where number >= 65 && number <= 70:
        println("Just age < 65...70") //value binding
    
    case ("Andrii", _): println("Just Andrii")
    
    default: break

}

// Switch Tuples

let point = (5, -6)

switch point {
    
    case let (x,y) where x == y:
        println("x == y")
    
    case let (x,y) where x == -y:
        println("x == -y")
    
    case let (_,y) where y < 0:
        println("y < 0")
    
    default: break
}

// Swith Type

let array: [Printable] = [5, 5.4, Float(5.4)]

switch array[2] {
    case _ as Int: println("Int")
    case _ as Float: println("Float")
    case _ as Double: println("Double")
    default: break
}


//_____________HOME WORK_____________//

println("\n\t Task 1 \n\t")

/*

Задание 1

Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.

Plan:
    1. Create var with 200 symbols including leters, numbers, symbols
    2. Create condition that will verify vowels
    3. Create condition that will verify consonants
    4. Create condition that will verify symbols
    5. Move into switch
    6. Move into loop

*/

let text = "abcdefghijklmnopqrstuvwxyz 0123456789 !@#$%^&*()-_=+{}[]:;<>,.?|/ \'\"\\ ъ\u{301}\u{20dd} ♠♂☂€☺ 😃🍩👑👌🏻"

var vowels = 0
var consonants = 0
var numbers = 0
var spaces = 0
var symbols = 0

for ch in text {
    switch ch {
        case "a", "e", "i", "o", "u", "y": ++vowels
        
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z": ++consonants
        
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9": ++numbers
        
        case " ": ++spaces
        
        default: ++symbols
        
        }
    }

let sum = vowels + consonants + numbers + spaces + symbols

println("Text: \n\n'\(text)'\n")
println("Total recognized: \(sum) and length: \(count(text))")
println("Vowels: \(vowels)")
println("Consonants: \(consonants)")
println("Numbers: \(numbers)")
println("Spaces: \(spaces)")
println("Symbols: \(symbols)")

println("\n\t Task 2 \n\t")

/*

Задание 2

Создайте свитч который принимает возраст человека и выводит описание жизненного этапа

Plan:
    1. Understand ages and life frames

*/

let someAge = 130

switch someAge {
    case let age where age < 1: println("Age can't be < 0")
    case 0...1: println("\(someAge) years it's Baby")
    case 2...12: println("\(someAge) years it's Child")
    case 13...19: println("\(someAge) years it's Teen")
    case 20...29: println("\(someAge) years it's Young")
    case 30...49: println("\(someAge) years it's Adult")
    case 50...69: println("\(someAge) years it's Old")
    case 70...89: println("\(someAge) years it's Very old")
    case 90...129: println("\(someAge) years it's Long-liver")
    case let age where age > 129: println("\(someAge) years it's Dracula")
    default: break
}

println("\n\t Task 3 \n\t")

/*

Задание 3

Plan:
    1. Create tuple let student: (firstName: "Андрей", middleName: "Александрович", lastName: "Азимов")
    2. Check Tuple element in case wild card
    3. Check first letter in string .hasPrefix("A")
    4. + case "А", "О": println("\(student.firstName)")
    5. case "В", "Д": println("\(student.firstName) \(student.middleName)")
    6. case "Е", "З": println("\(student.lastName)")
    7. default: println("\(student.lastName) \(student.firstName) \(student.middleName)")

*/

let student = (firstName: "Андрей", middleName: "Александрович", lastName: "Азимов")
let gretting = "Здравствуй, "

switch student {
    case (let firstName,_,_) where firstName.hasPrefix("А") || firstName.hasPrefix("О"):
        println("\(gretting)\(student.firstName)")
    
    case (_,let middleName,_) where middleName.hasPrefix("В") || middleName.hasPrefix("Д"):
        println("\(gretting)\(student.firstName) \(student.middleName)")
    
    case (_,_,let lastName) where lastName.hasPrefix("Е") || lastName.hasPrefix("З"):
        println("\(gretting)\(student.lastName)")
    
    default:
        println("\(gretting)\(student.lastName) \(student.firstName) \(student.middleName)")
}

println("\n\t Task 4 \n\t")

/*

Задание 4

Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.

Plan:
0. How implement ранил и убил? убил 1 ранил > 1
1. Create tuple var point = (x:0, y:0)
2. Draw see map on paper
3. Draw ships on this map (check rules how many ships can be)
4. Get cordinates of this ships
5. Convert cordinates to cases
6. Default "Мимо"

*/

let shot = (x:"Ж", y:1)

let hurt = "Ранил!"
let kill = "Убил!"
let missed = "Мимо!"
let error = "Диапазаон букв: А-К, диапазаон цифр: 1-10. Пример: 'К10'"

switch shot {
case (let x, let y) where (x != "А" && x != "Б" && x != "В" && x != "Г" && x != "Д" && x != "Е" && x != "Ж" && x != "З" && x != "И" && x != "К" ) || (y < 1 || y > 10 ):
    println("\(error)")
    
case (let x, 6...7) where (x == "Б") || (x == "Б"):
    println("\(hurt)")
    
case (let x, let y) where (x == "А" && y == 1) || (x == "Б" && y == 1):
    println("\(hurt)")
    
case (let x, let y) where (x == "Г" && y == 1) || (x == "Г" && y == 3):
    println("\(hurt)")
    
case (let x, let y) where (x == "Ж" && y == 1):
    println("\(kill)")
    
case (let x, let y) where (x == "К" && y == 4):
    println("\(kill)")
    
case (let x, let y) where (x == "Ж" && y == 6):
    println("\(kill)")
    
case (let x, let y) where (x == "З" && y == 10):
    println("\(kill)")
    
case (let x, let y) where (x == "Е" && y == 9):
    println("\(kill)")
    
case (let x, let y) where (x == "Г" && y == 9):
    println("\(kill)")
    
case (let x, let y) where (x == "А" && y == 10):
    println("\(kill)")
    
default: println("\(missed)")
    
}






 
