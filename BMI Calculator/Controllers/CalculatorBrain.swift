//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Alexander Bokhulenkov on 06.06.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?

    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more peis", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less a pies", color: .red)
        }
    }
    
    func getAdvice() -> String {
        bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        bmi?.color ?? .brown
    }
}
