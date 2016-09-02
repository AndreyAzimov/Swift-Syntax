/*
 
 Lesson 12 - Enums
 http://vk.com/topic-58860049_31696394
 
 */

//MARK: Lesson work

print("\n\t Lesson work \n\t")

enum Action {
    case Walk (meters: Int)
    case Run (meters: Int, speed: Int)
    case Stop
    case Turn (direction: Direction)
}

enum Direction: String {
    case Left = "Left!"
    case Right = "Right!"
}

// Create instance if enum

var action = Action.Run (meters: 20, speed: 15)

action = .Walk(meters: 20)

action = .Turn(direction: .Right)

var direction = Direction(rawValue: "Right!")!
action = .Turn(direction: direction)


// Switch

switch action {
    
case .Stop: print("Stop")
    
case .Walk(let meters) where meters < 100:
    print("Short walk")
    
case .Walk(let meters):
    print("Long walk")
    
case .Run(let m, let s):
    print("Run \(m) meters with speed: \(s)")
    
// Full name
case .Turn(let dir) where dir == .Left:
    print("Turn left")
    
// Short name
case .Turn(let dir) where dir == .Right:
    print("Turn right")
    
default: break
    
}

print(Direction.Left.rawValue)

//__________________________________


//MARK: Home work

/*
 
 MARK: 1
 
 Создать энум с шахматными фигруами (король, ферзь и т.д.).
 Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят)
 а так же букву и цифру для позиции.
 Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :)
 Поместите эти фигуры в массив фигур
 
 */

enum Color: String, CustomStringConvertible {
    
    case Black = "Black"
    case White = "White"
    
    var description : String {
        get {
            return self.rawValue
        }
    }
}

enum Type: String, CustomStringConvertible {
    
    case King = "King"
    case Queen = "Queen"
    case Rock = "Rock"
    case Bishop = "Bishop"
    case Knight = "Knight"
    case Pawn = "Pawn"
    
    var description : String {
        get {
            return self.rawValue
        }
    }
}

typealias Figure = (type: Type, color: Color, x: String, y: Int, pic: String)


var kingBlack = (type: Type.King, color: Color.Black, x: "d", y: 8, pic: "🔴")
var rock1White = (type: Type.Rock, color: Color.White, x: "g", y: 7, pic: "🔴")
var rock2White = (type: Type.Rock, color: Color.White, x: "h", y: 8, pic: "🔴")
var kingWhite = (type: Type.King, color: Color.White, x: "e", y: 1, pic: "🔴")

var figures = [kingBlack, rock1White, rock2White, kingWhite]


print("\n\t Task 2 \n\t")

/*
 
 MARK: 2
 
 Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.
 */

func printFigure (figure: (type: Type, color: Color, x: String, y: Int, pic: String)) {
    print("\nColor: \(figure.color)")
    print("Type: \(figure.type)")
    print("Position: \(figure.x)\(figure.y)")
}

func printFigures (firures: [Figure]) {
    
    for figure in firures{
        printFigure(figure)
    }
}

printFigures(figures)

print("\n\t Task 3 \n\t")

/*
 
 MARK: 3
 
 Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску.
 Если клетка не содержит фигуры, то используйте белую или черную клетку.
 Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
 
 
 */

typealias Point = (x: Int, y: Int, pic: String)

func printCell(x: Int, y: Int) {
    
    (x % 2 == y % 2) ? print("⬛️") : print("⬜️")
}

func whatFigure(x: Int, y: Int, points: [Point]) -> String? {
    
    for point in points {
        
        if x == point.x && y == point.y {
            
            return point.pic
        }
    }
    
    return nil
}

func printBoard (points: [Point]) {
    
    for y in 1...8 {
        
        for x in 1...8 {
            
            let figure = whatFigure(x, y: y, points: points)
            
            if figure != nil {
                print(figure!)
                
            } else {
                printCell(x,y: 9-y)
                
            }
            
            if x % 8 == 0 {
                print()
            }
            
        }
    }
}

let a = 9

let point1 = (x: 1, y: a-1, pic: "♚")
let point2 = (x: 8, y: a-8, pic: "♖")
let point3 = (x: 1, y: a-8, pic: "♖")
let point4 = (x: 8, y: a-1, pic: "♔")

var points = [Point]()

points.append(point1)
points.append(point2)
points.append(point3)
points.append(point4)

printBoard(points)
print("abcdefgh")