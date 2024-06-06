//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Alexander Bokhulenkov on 06.06.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    var bmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }
    
    @IBAction func racalculatePressed(_ sender: UIButton) {
//        возврат на первый контроллек
        self.dismiss(animated: true)
    }
    
    
    func updateUI() {
        bmiLabel.text = bmiValue
    }
   
}
