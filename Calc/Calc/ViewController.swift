//
//  ViewController.swift
//  Calc
//
//  Created by Elise Lin on 2/13/15.
//  Copyright (c) 2015 Elise Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        }else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
        
//        println("digit = \(digit)")
    }
    
    var operandStack = Array<Double>()
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        operandStack.append(<#newElement: T#>)
    }
    
}

