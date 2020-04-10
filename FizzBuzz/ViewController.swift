//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Siroratt Suntronsuk on 9/4/2563 BE.
//  Copyright © 2563 Siroratt Suntronsuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    
    let immutable = 8
    var mutable = 8

    @IBAction func submitButtonDidClick(_ sender: Any) {
        print("Button did click ja")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let inputTextFieldText = inputTextField.text,
            let destinationVC = segue.destination as? SecondViewController {
            
            guard let inputNumber = Int(inputTextFieldText) else {
                destinationVC.displayData = "Eiei"
                return //short circuit
            }
            destinationVC.displayData = FizzBuzzEngine(number: inputNumber).result
        }
    }
    
}

