//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //var bmiValue = "0.0"
    var calculatorBrain = CalculatorBrain ()
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculatorBrain.getBMIValue()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider)
    {
        let height = (String(format: "%.2f", sender.value))
        heightLabel.text = "\(height)m"
        
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider)
    {
        //stampa solo decimali
        let weight = (String(format: "%.0f", sender.value))
        //alternativa
        //print(int(sender.value))
        weightLabel.text = "\(weight)kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton)
    {
        let height = heightSlider.value
        let weight = weightSlider.value
       // let bmi = weight / (height * height)
       // bmiValue = String(format: "%.1f", bmi)
        //alternativa
        //let bmi = weight / pow(height , 2)
        //print(bmi)
        calculatorBrain.calculateBMI(height: height , weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    
    if segue.identifier == "goToResult"
         {
             let destinationVC = segue.destination as! ResultViewControlViewController
        destinationVC.bmiValue = calculatorBrain.getBMIValue()
        destinationVC.advice = calculatorBrain.getAdvice()
        destinationVC.color = calculatorBrain.getColor()
         }
    }
}
