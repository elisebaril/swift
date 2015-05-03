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

func findLargestBalance(balances : Double...) -> Double {
    
    var result : Double = -Double.infinity
    
    for balance in balances {
        if balance > result {
            result = balance
        }
    }
    
    return result
}

func findSmallestBalance (balances : Double...) -> Double {
    
    var result : Double = Double.infinity
    
    for balance in balances {
        if balance < result {
            result = balance
        }
    }
    return result
}

findLargestBalance(345.12, 1_000.80, 233.10, 104.80, 99.90)
findSmallestBalance(345.12, 1_000.80, 233.10, 104.80, 99.90)

var account1 = ("State Bank Personal", 1_011.10)
var account2 = ("State Bank Business", 24_309.63)

func deposit (amount : Double, account : (name : String, balance : Double)) -> (String, Double) {

    var newBalance : Double = account.balance + amount
    
    return (account.name, newBalance)
    
}

func withdraw (amount : Double, account : (name : String, balance : Double)) -> (String, Double) {
    
    var newBalance : Double = account.balance - amount
    
    return (account.name, newBalance)
}

let mondayTransaction = deposit
let fridayTransaction = withdraw

let mondayBalance = mondayTransaction (300.0, account1)
let fridayBalance = fridayTransaction (1_200, account2)

func chooseTransaction (transaction : String) -> (Double, (String, Double)) ->(String, Double) {
    
    if transaction == "Deposit" {
        return deposit
    }
    
    return withdraw
}

//option 1: capture the function in a constant and call it 

let myTransaction = chooseTransaction("Deposit")

myTransaction (225.33, account2)

//option 2: call the function result directly

chooseTransaction("Withdraw")(63.17, account1)


//nested function example
func bankVault(passcode : String) -> String {
    func openBankVault(Void) -> String {
        return "Vault opened"
    }
    func closeBankVault(Void) -> String {
        return "Vault closed"
    }
    if passcode == "secret" {
        return openBankVault()
    }
    else {
        return closeBankVault()
    }
}

println(bankVault("wrongsecret"))
println(bankVault("secret"))

func writeCheck(payee : String = "Unknown", amount : String = "10.00") -> String {
    return "Check payable to " + payee + " for $" + amount
}

writeCheck()
writeCheck(payee: "Donna Soileau")
writeCheck(payee: "John Miller", amount: "45.00")

func writeCheck(payer : String, payee : String, amount : Double) -> String {
    return "Check payable from \(payer) to \(payee) for $\(amount)"
}

writeCheck("Dave Johnson", "Coz Fontenot", 1000.0)

func writeBetterCheck(from payer: String, to payee: String, total amount: Double) -> String {
    return "Check payable from \(payer) to \(payee) for $\(amount)"
}

writeBetterCheck(from: "Fred Charlie", to: "Ryan Hanks", total: 1350.0)

writeCheck("Dave Johnson", "Coz Fontenot", 1000.0)

func writeBestCheck(#from: String, #to: String, #total: Double) -> String {
    return "Check payable from \(from) to \(to) for $\(total)"
}

writeBestCheck(from: "Bart Stewart", to: "Alan Lafleur", total: 101.0)

func addTwoNumbers(number1 : Double, number2 : Double) -> Double {
    return number1 + number2
}

addTwoNumbers(33.1, 12.2)

func cashCheck(#from: String, #to: String, #total: Double) -> String {
    var otherTo = to
    if to == "Cash" {
        otherTo = from
    }
    return "Check payable from \(from) to \(otherTo) for $\(total) has been cashed"
}

cashCheck(from: "Jason Guillory", to: "Cash", total: 103.00)

func cashBetterCheck(#from: String, var #to: String, #total: Double) -> String  {
    if to == "Cash" {
        to = from
    }
    return "Check payable from \(from) to \(to) for $\(total) has been cashed"
}

cashBetterCheck(from: "Ray Daigle", to: "Cash", total: 103.00)

func cashBestCheck(#from : String, inout #to : String, #total : Double) -> String {
    if to == "Cash" {
        to = from
    }
    return "Check payable from \(from) to \(to) for $\(total) has been cashed"
}

var payer = "James Perry"
var payee = "Cash"
println(payee)
cashBestCheck(from: payer, to: &payee, total: 103.00)
println(payee)

//Closures
let simpleInterestCalculationClosure = { (loanAmount: Double, var interestRate: Double, years: Int) -> Double in
    interestRate = interestRate / 100.0
    var interest = Double(years)*interestRate*loanAmount

    return loanAmount+interest
}

func loanCalculator (loanAmount: Double, interestRate: Double, years: Int, calculator: (Double, Double, Int) -> Double) -> Double
{
    let totalPayout = calculator (loanAmount, interestRate, years)
    return totalPayout
}

var simple = loanCalculator(10_000, 3.875, 5, simpleInterestCalculationClosure)

let compoundInterestCalculationClosure = { (loanAmount : Double, var interestRate : Double, years : Int) -> Double in
    interestRate = interestRate / 100.0
    var compoundMultiplier = pow(1.0 + interestRate, Double(years))
    
    return loanAmount * compoundMultiplier
}

var compound = loanCalculator(10_000, 3.875, 5, compoundInterestCalculationClosure)


























