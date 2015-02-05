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

	// instance variable or property.
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

}

