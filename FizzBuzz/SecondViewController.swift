//
//  SecondViewController.swift
//  FizzBuzz
//
//  Created by Siroratt Suntronsuk on 10/4/2563 BE.
//  Copyright © 2563 Siroratt Suntronsuk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var displayData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = displayData
    }
    

}

extension SecondViewController {
    
//    override func viewWillAppear(_ animated: Bool) {
//        <#code#>
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        <#code#>
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        <#code#>
//    }
//    
//    override func viewDidDisappear(_ animated: Bool) {
//        <#code#>
//    }
    
}
