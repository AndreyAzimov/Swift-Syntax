/*

Lesson 11 - Closures
    http://vk.com/topic-58860049_31683288

*/

//MARK: Lesson work

println("\n\t Lesson work \n\t")

let numbers = [ 100, 121, 2, 3, 44, 5, 26, 71, 8, 2,  9, 599, 13, 14, 15, 4, 66]
numbers.count

func filterArray(array: [Int], f: (Int) -> Bool) -> [Int] {
    
    var filteredArray = [Int]()
    
    for element in array {
        
        if f(element) {
            filteredArray.append(element)
        }
        
    }
    
    return filteredArray
}

/*

func numberType (n: Int) -> Bool {
return n % 2 == 0
}

filterArray(array, numberType)

*/

// Func with no name created directly in code

filterArray(numbers, {(n: Int) -> Bool in
    return n % 2 == 0
})

filterArray(numbers, {(n: Int) -> Bool in
    return n % 3 == 0
})

filterArray(numbers, {(n: Int) -> Bool in
    return n < 10
})

// Shorter
filterArray(numbers, {n in
    return n % 2 == 0
})

// Shorter
let a1 =
filterArray(numbers, {n in n % 2 == 0})

// Shorter
let a2 =
filterArray(numbers, {$0 % 2 == 0})

// Shorter
let a3 =
filterArray(numbers) {$0 % 2 == 0}

// Shorter
//let a4 =
//filterArray {$0 % 2 == 0} //if func has not input args

//---

let numbersThatIneed = [1, 2, 3, 44, 66, 33, 7]

var count = 0

// Via array
let a4 =
filterArray(numbers) {numberFromFunc in
    
    for number in numbersThatIneed {
        
        count++
        
        if numberFromFunc == number {
            return true
        }
    }
    return false
}

count

count = 0

// Via dictionary
var dict = [Int:Bool]()

for element in numbersThatIneed {
    ++count
    dict[element] = true
}

filterArray(numbers) {numberFromFunc in
    ++count
    return dict[numberFromFunc] != nil
}

// Shorter
filterArray(numbers) {dict[$0] != nil}

count

//-----------------------------------------------
//MARK: Home work

//MARK: 1
/*
Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.
*/

println("\n\t Task 1 \n\t")

func emptyFunc(closure: ()->()) {
    
    println("Loop cycle will start next")
    
    for i in 1...10 {
        println("Loop cycle: \(i)")
    }
    
    closure()
    
}

emptyFunc {
    println("Closure called")
}

//MARK: 2
/*
Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.
*/

println("\n\t Task 2 \n\t")

println("Array before sort: \(numbers)")

func ascending (n1:Int, n2:Int) -> Bool {
    return n1 < n2
}

func descending (n1:Int, n2:Int) -> Bool {
    return n1 > n2
}

sorted(numbers, ascending)
sorted(numbers, descending)

// Shorter

sorted(numbers, { (n1: Int, n2: Int) -> Bool in
    return n1 < n2
})

sorted(numbers, { (n1: Int, n2: Int) -> Bool in
    return n1 > n2
})

// Shorter

sorted(numbers) {return $0 < $1}

sorted(numbers) {return $0 > $1}


// Shorter

sorted(numbers) {$0 < $1}

sorted(numbers) {$0 > $1}


// Shorter

sorted(numbers, <)
sorted(numbers, >)

println("\nArray sorted ascending: \(sorted(numbers, <))")
println("\nArray sorted descending: \(sorted(numbers, >))")

//MARK: 3
/*
Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.
Используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
*/

println("\n\t Task 3 \n\t")

func filter (array: [Int], callBack:(Int?, Int) -> Bool) -> Int {
    
    var a: Int?
    
    for element in array {
        
        if callBack(a, element) {
            a = element
        }
    }
    
    return a ?? 0
}

let minNumber = filter(numbers) {
    $0 == nil || $1 < $0
}

let maxNumber = filter(numbers) {
    $0 == nil || $1 > $0
}

println("In array: \(numbers)")
println("Min number: \(minNumber)")
println("Max number: \(maxNumber)")

//MARK: 4
/*
Создайте произвольную строку.
Преобразуйте ее в массив букв.
Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли
гласные в алфавитном порядке
потом согласные
потом цифры
а потом символы
*/

println("\n\t Task 4 \n\t")

let str = "*!0123456789qwertyuiopasdfghjklzxcvbnm?QWERTYUIOPASDFGHJKLZXCVBNM"
var strArray = [String]()

for s in str {
    strArray.append(String(s))
}


func priority (s: String) -> Int {
    
    switch s.lowercaseString {
        
    case "a","e", "i", "o", "u", "y": return 1
    case "b"..."z": return 2
    case "0"..."9": return 3
    default: return 4
        
    }
}

let sortedArray =
strArray.sorted {

//    if priority($0) < priority($1) {
//        
//        return true
//        
//    } else if priority($0) == priority($1) {
//        
//        return $0.uppercaseString < $1.uppercaseString
//        
//    } else {
//        
//        return false
//    }
    
    switch (priority($0), priority($1)) {
    
    case let(x,y) where x < y: return true
    case let(x,y) where x > y: return false
    
    default: return $0.lowercaseString <= $1.lowercaseString
    
    }
    
}

var sortS = ""

for s in sortedArray {
    sortS += s
}

println("Before sort: \(str)")
println("After sort: \(sortS)")

//MARK: 5
/*
Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)
*/

println("\n\t Task 5 \n\t")

func getScalar (ch: Character) -> Int {
    let z = String(ch).unicodeScalars
    return Int(z[z.startIndex].value)
}

func minMaxLetter (letters: String, f:(Int?, Int) -> Bool) -> (letter: Character, scalar: Int) {
    
    var scalar: Int?
    var letter: Character?
    
    for ch in letters {
        
        if scalar == nil && letter == nil {
            scalar = getScalar(ch)
            letter = ch
        }
        
        if f(scalar, getScalar(ch)) {
            scalar = getScalar(ch)
            letter = ch
        }
    }
    
    return (letter: letter!, scalar: scalar!)
}

let letters = "rdfzghjbajlkjlklmldA"

let minLetter = minMaxLetter(letters) {$0 > $1}
let maxLetter = minMaxLetter(letters) {$0 < $1}

println("String: \(letters)")
println("Min letter: \(minLetter.letter) - \(minLetter.scalar)")
println("Max letter: \(maxLetter.letter) - \(maxLetter.scalar)")
