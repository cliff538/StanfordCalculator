//
//  ViewController.swift
//  StanfordCalculator
//
//  Created by Cliff Gurske on 2/4/15.
//  Copyright (c) 2015 cat3Development. All rights reserved.
//

import UIKit

// inherits from SuperClass (in blue) UIViewController.
class ViewController: UIViewController {

	// instance variable or property. UILabel != a implecitly unwrapped optional
	// we don't have to unwrap every time we use it. Hence, no ! after var display
	// down in the method appendDigit.
	@IBOutlet weak var display: UILabel!
	
	var userIsInTheMiddleOfTypingANumber: Bool = false

	// method or function. name is sender, that is how you access it. Type is UIButton.
	@IBAction func appendDigit(sender: UIButton) {
		
		let digit = sender.currentTitle!
		
		if userIsInTheMiddleOfTypingANumber {
				display.text = display.text! + digit
		} else {
				display.text = digit
				userIsInTheMiddleOfTypingANumber = true
		}
		
	}

	@IBAction func operate(sender: UIButton) {
		let operation = sender.currentTitle!
	}
	var operandStack = Array<Double>()
	
	@IBAction func enter() {
		userIsInTheMiddleOfTypingANumber = false
		operandStack.append(displayValue)
		println("operandStack = \(operandStack)")
		
	}
	
	var displayValue: Double {
		get {
			return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
		}
		set {
			display.text = "\(newValue)"
			userIsInTheMiddleOfTypingANumber = false
		}
	}
}

