//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Andrei Adam on 07/02/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController
{
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        
        
        
        view.backgroundColor = .red
        
        super.viewDidLoad()
        let label = UILabel ()
        label.text= bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
