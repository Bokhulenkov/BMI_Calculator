//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Alexander Bokhulenkov on 06.06.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {

    
    func bmi(weight: Float, height: Float) -> String {
        let bmi = weight / pow(height, 2)
        return String(format: "%.1f", bmi)
    }
    
}
