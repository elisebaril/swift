// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var trafficLight = "Red"

if trafficLight != "Green" {
    print("Stop!")
    
}else{
    print("Go!")
}

var number1 : Int = 33
var number2 : Int = 101

if number1 >= number2{
    print("33 is greater than 101")
}else{
    print("33 is less than 101")
}

let tree1 = "Oak"
let tree2 = "Pecan"
let tree3 = "Maple"

let treeCompare1 = tree1 > tree2
let treeCompare2 = tree2 > tree3

var treeArray = [tree1, tree2, tree3]

for tree in treeArray {
    if tree == "Oak" {
        println("Furniture")
    }
    else if tree == "Pecan" {
        println("Pie")
    }
    else if tree == "Maple" {
        println("Syrup")
    }
}

treeArray += ["Cherry"]

for tree in treeArray {
    switch tree {
        case "Oak":
            println("Furniture")
        case "Pecan", "Cherry":
            println("Pie")
        case "Maple":
            println("Syrup")
        default:
            println("Wood")
    }
}


var position = 8

switch position {
    case 1:
        println("\(position)st")
    case 2:
        println("\(position)nd")
    case 3:
        println("\(position)rd")
    case 4...9:
        println("\(position)th")
    default:
        println("Not Covered")
}

var base = 2
var target = 1000
var value = 0

while value < target {
    value += base
}

do {
    value += base
}while value < target

//Speed Limit Simulation

var speedLimit = 75
var carSpeed = 0

while (carSpeed < 100) {
    carSpeed++
    switch carSpeed {
    case 0..<20:
        println("\(carSpeed): You're going realle slow")
    case 20..<30:
        println("\(carSpeed): Pick up the pace")
    case 30..<40:
        println("\(carSpeed): Tap the accelerator")
    case 40..<50:
        println("\(carSpeed): Hitting your stride")
    case 50..<60:
        println("\(carSpeed): Moving at good clip")
    case 60..<70:
        println("\(carSpeed): Now you're cruising")
    case 70...speedLimit:
        println("\(carSpeed): Warning... approching the speed limit")
    default:
        println("\(carSpeed): You're going too fast!")
    }
    if carSpeed > speedLimit {
        break
    }
}



















