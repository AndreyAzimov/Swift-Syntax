var tuple = (name: "Andrii", age: 23, weight: 58.5, hasMac: true)
tuple.weight = 60.2

let (x, y, z) = (10.0, 20.0, 30.0)
x
y
z

//Homework 3

var andrii = (pushUps:100, pullUps:20, squats:120)
var vova = (pushUps:70, pullUps:15, squats:60)

println(andrii)

println("Andrii can do:")
println("\t Push-Ups: \(andrii.pushUps) (\(andrii.pushUps - vova.pushUps) more than Vova)")
println("\t Pull-Ups: \(andrii.pullUps) (\(andrii.pullUps - vova.pullUps) more than Vova)")
println("\t Squats:   \(andrii.2) (\(andrii.squats - vova.squats) more than Vova)\n")

//Tuple Replacement
println("Before replacement:\n\t Andrii: \(andrii)\n\t Vova:   \(vova)")

var temp = vova.pushUps
vova.pushUps = andrii.pushUps
andrii.pushUps = temp

temp = vova.pullUps
vova.pullUps = andrii.pullUps
andrii.pullUps = temp

temp = vova.squats
vova.squats = andrii.squats
andrii.squats = temp

println("After replacement:\n\t Andrii: \(andrii)\n\t Vova:   \(vova)\n")

//Bonus
println("Vova can do:")
println("\t \(vova.pushUps - andrii.pushUps) more push-ups than Andrii")
println("\t \(vova.pullUps - andrii.pullUps) more pull-ups than Andrii")
println("\t \(vova.squats - andrii.squats) more squats than Andrii")
