// Playground - noun: a place where people can play

import UIKit


func fahrenheitToCelcius(fahrenheitValue : Double) -> Double {
    
    var result : Double
    
    result = (((fahrenheitValue - 32) * 5) / 9)
    
    return result
}

var outdoorTemperatureInFahrenheit = 88.2
var outdoorTemperatureInCelcius = fahrenheitToCelcius(outdoorTemperatureInFahrenheit)

func celciusToFahrenheit(celciusValue : Double) -> Double {
    
    var result : Double
    
    result = (((celciusValue * 9)/5)+32)
    
    return result
}

var outdoorTempInCelcius : Double = 42
var outdoorTempInFahrenheit = celciusToFahrenheit(outdoorTempInCelcius)


func buildASentence(subject : String, verb : String, noun : String) -> String {
    
    return subject + " " + verb + " " + noun + "!"
}

buildASentence("Swift", "is", "cool")
buildASentence("I", "love", "languages")


//Parameters Ad Nauseam

func addMyAccountBalances(balances : Double...) ->Double {
    
    var result :Double = 0
    
    for balance in balances {
        result += balance
    }
    return result
}

addMyAccountBalances(77.87)
addMyAccountBalances(10.52, 11.30, 100.60)
addMyAccountBalances(345.12, 1_000.80, 233.10, 104.80, 99.90)
























