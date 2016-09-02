/*

Lesson 08 - Dictionary
    http://vk.com/topic-58860049_31601491

Notes:
 - Super quick search. Faster then in array.
 - Not ordered! Order is random!!!!

Author: Andrii Azimov
    http://vk.com/azimov.andrey

*/

//_____________LESSON WORK_____________//

println("\n\t Lesson work \n\t")

// Creating

var dict = ["key1": "value1", "key2":"value2"]
var dict2 = [Int:Int]()
dict2 = [1: 100]

dict["key1"]
dict.count
dict.isEmpty

// Updating

dict["key3"] = "value3" // add new key value
dict["key2"] = "newvalue2" // replace value for key

dict.keys.array
dict.values.array

let a = dict.updateValue("SUPER", forKey: "key1") //Update value and return old value that was replaced. If key is new return nil

// Optional Types

let value: String? = dict["key1"] //value has optional type

if let key = dict["key2"] {
    println("Key: \(key) \n")
} else {
    println("No value for key")
}

// Removig

dict["key2"] = nil //hard remove key and value
dict.removeValueForKey("key1") //soft remove. Return nil if no key
dict = [:] //remove all

dict = ["key1": "value1", "key2":"value2"]

// Iterating

for key in dict.keys {
    println("Key: \(key), Value: \(dict[key]! )")
}

for (key, value) in dict {
    println("Key: \(key), Value: \(value)") // Better way!
}

//_____________HOME WORK_____________//

println("\n\t Task 1 \n\t")

/*

Задание 1

Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную
значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как
их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(

После всех этих перетрубаций посчитайте общий бал группы и средний бал

Plan:
1. Create dictionary: var studentsList = ["Andrii Azimov": 5.0]
2. Update score: studentsList.updateValue(4.0, forKey: "Ivan Ivanov")
3. Add students to list: studentsList["Peter Petrov"] = 4.0
4. Delete students from list: studentsList.removeValueForKey("Ivan Ivanov")
5. Sum of all values::
    for (_, score) in studentsList {
        sum += score
    }
6. Average score of all values: sum / Double(studentsList.count)

*/

// Create
var studentsList = ["Andrii Azimov": 5.0, "Ivan Ivanov": 3.0, "Vasiliy Valiliev": 2.0]
var sum = 0.0

// Update
studentsList.updateValue(4.0, forKey: "Ivan Ivanov")
studentsList.updateValue(3.0, forKey: "Vasiliy Valiliev")

// Insert
studentsList["Peter Petrov"] = 4.0
studentsList["Yaroslav Mykhailov"] = 5.0

// Delete
studentsList.removeValueForKey("Ivan Ivanov")

// Sum
for (_, score) in studentsList {
    sum += score
}

// Average
let averageScore = sum / Double(studentsList.count)

// Print
println("Sum of all \(studentsList.count) students scores: \(sum)")
println("Avarege students score =  \(sum) / \(studentsList.count) = \(averageScore)")

println("\n\t Task 2 \n\t")

/*

Задание 2

Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.

Plan:
1. Create dictionary: var months = ["January": 31, ]
2. Iterating via tuple
3. Iterating via array

*/

var months = ["January": 31, "February": 28, "March": 31, "April": 30, "May": 31, "June": 30, "July": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31]

// Iterating via tuple
for (month, day) in months {
    println("\(month): \(day)")
}

println()

// Iterating via array
for key in months.keys.array {
    println("\(key): \(months[key]!)")
}

println("\n\t Task 3 \n\t")

/*

Задание 3

Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.
Рекомендация: постарайтесь все сделать используя вложенный цикл (объяснение в уроке).

Plan:
1. Create string array
2. Create int array
3. Create empty dictionary [String: Bool]
4. Create condition that will add data to dictionay with test variables
5. Move it in double loops

Note:
chessDesk["\(arrayLetters[x-1])\(arrayNumbers[y-1])"]
    x-1 cause  in array numbers start from 1 (not from 0) and if do not  do -1 will be array index of range exception cause [8] element doesn't exist only 7

*/

let arrayLetters = ["a", "b", "c", "d", "e", "f", "g", "h"]
var chessDesk = [String: Bool]()

for x in 1...8 {
    for y in 1...8 {
        if x % 2 == y % 2 {
            chessDesk["\(arrayLetters[x-1])\(y)"] = false
        } else {
            chessDesk["\(arrayLetters[x-1])\(y)"] = true
        }
    }
}

for key in sorted(chessDesk.keys) {
    println("\(key): \(chessDesk[key]!)")
}

