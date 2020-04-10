//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Siroratt Suntronsuk on 9/4/2563 BE.
//  Copyright © 2563 Siroratt Suntronsuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var alert: UIAlertController = {
        let alert = UIAlertController(title: "Did you bring your towel?", message: "It's recommended you bring your towel before continuing.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

        return alert
    }()
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
    
    @IBAction func alertButtonDidClick(_ sender: Any) {
        self.present(alert, animated: true)
    }
}

extension ViewController {
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("First screen: viewWillDisappear")
        NotificationCenter.default.removeObserver(self, name:
            UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name:
            UIApplication.didBecomeActiveNotification, object: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(self.didEnterBackground), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.didBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("First screen: viewWillAppear")
    }
    
    @objc func didEnterBackground()  {
        print("First screen: didEnterBackground")
    }
    
    @objc func didBecomeActive() {
        //view should reload the data.
        print("First screen: didBecomeActive")
    }
}
