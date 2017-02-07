//
//  ViewController.swift
//  FindingPrimes
//
//  Created by Brian Rodriguez on 2/6/17.
//  Copyright © 2017 Brian Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var result: UILabel!
	
	@IBOutlet var userNumber: UITextField!
	
	@IBAction func findPrime(_ sender: Any)
	{
		var isPrime = true;
		
		if let userNum = Int(userNumber.text!)
		{
		
			if userNum > 1
			{
				for i in (2..<userNum)
				{
					if userNum % i == 0
					{
						isPrime = false;
					}
				}
				
				if isPrime == true
				{
					result.text = "This is a prime number!";
				}
				else
				{
					result.text = "This is not a prime number.";
				}
			}
			else
			{
				result.text = "Enter a number greater than 1.";
			}
		}
		else
		{
			result.text = "Please enter a number.";
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

