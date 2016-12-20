//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Hal on 20/12/2016.
//  Copyright © 2016 Hal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var guessUserTry: UITextField!
	@IBOutlet weak var fingersHoldedUp: UILabel!
	
	
	@IBAction func guessButton(_ sender: Any) {
		let randomNumber = arc4random_uniform(5)+1
		if guessUserTry.text == String(randomNumber) {
			fingersHoldedUp.text = String("You're right!")!
			print(randomNumber)
		}
		else{
			fingersHoldedUp.text = String("Try again! I was holding \(randomNumber) fingers up.")!
			print(randomNumber)
	}
  }
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

