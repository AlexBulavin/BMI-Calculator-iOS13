//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Alex on 09.03.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue {
        case 0..<18.5:
            bmi = BMI(value: bmiValue, advice: "advice for Underweight", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5 ... 24.9:
            bmi = BMI(value: bmiValue, advice: "advice for Normal", color:  #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        case 24.9..<1000:
            bmi = BMI(value: bmiValue, advice: "advice for Overweight", color:  #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        default:
            bmi = BMI(value: bmiValue, advice: "advice for Default", color:  #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
        }
    }
        
        func getBMIValue() -> String {
            
            let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiValue
        }
        
        func getAdvice() -> String {
            let bmiAdvice =  bmi?.advice ?? "No advice"
            return bmiAdvice
        }
        
        func getColor() -> UIColor {
            let bmiColor =  bmi?.color ?? #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
            return bmiColor
        }
        
    
}
