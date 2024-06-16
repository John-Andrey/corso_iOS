//
//  Calculatorbrain.swift
//  BMI Calculator
//
//  Created by Andrei Adam on 07/03/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain
{
    var bmi: BMI?
    
    func getBMIValue() -> String
    {
        
        
        let bmiTo1DecimalPlace = String (format : "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        
    }
    func getAdvice() ->String
    {
        return bmi?.advice ?? "No advice"
    }
    func getColor() ->UIColor
    {
        return bmi?.color ?? UIColor.white
    }
    mutating func calculateBMI (height: Float, weight: Float)
    {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5
        {
            print("underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        }
        else if bmiValue < 24.9
        {
          print("normal weight")
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green )
        }
        else
        {
          print("over weight")
            bmi = BMI(value: bmiValue, advice:"Eat less pies !" , color: UIColor.red)
        }
           // bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
}
