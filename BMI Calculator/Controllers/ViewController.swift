//
//  ViewController.swift
//  BMI Calculator
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var userHeightLabel: UILabel!
    @IBOutlet weak var userWeightLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        userHeightLabel.text = String(format: "%.1f", sender.value) + "m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        userWeightLabel.text = String(format: "%.1f", sender.value) + "Kg"
    }
    

}

