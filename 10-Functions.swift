/*

Задание 2
Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль

Plan:
1. Create condition that will check chess desk and test it
2. Move it to func and return string
3. Print

*/



let x = "a"
let y = 6


func cellColor(var x: String, y: Int) -> String {
    
    switch x.lowercaseString {
        
    case "a":
        x = "1"
        
    case "b":
        x = "2"
        
    case "c":
        x = "3"
        
    case "d":
        x = "4"
        
    case "e":
        x = "5"
        
    case "f":
        x = "6"
        
    case "g":
        x = "7"
        
    case "h":
        x = "8"
        
    default: x = "error"
    
    }
    
    return (x.toInt()! % 2 == y % 2) ? "Black" : "White"
}

let color = cellColor(x, y)

println ("Color of cell \(x)\(y) is \(color)")
