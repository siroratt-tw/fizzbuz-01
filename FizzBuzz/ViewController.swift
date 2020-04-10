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
    
    var result: String {
        //guard let ~ short the circuit
        guard let inputTextFieldText = inputTextField.text else {
            return "Nil Ja"
        }
        
        guard let inputNumber = Int(inputTextFieldText) else {
            return "Cannot convert ja Eiei"
        }
        
        return FizzBuzzEngine(number: inputNumber).result
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? SecondViewController {
            destinationVC.displayData = result
        }
    }
    
}

