//
//  ResultViewControlViewController.swift
//  BMI Calculator
//
//  Created by Andrei Adam on 07/03/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewControlViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        // Do any additional setup after loading the view.
        adviceLabel.text = advice
        view.backgroundColor = color 
    }
    
    @IBAction func ricalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true , completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
