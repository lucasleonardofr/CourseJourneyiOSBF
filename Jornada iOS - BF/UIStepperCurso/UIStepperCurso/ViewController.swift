//
//  ViewController.swift
//  UIStepperCurso
//
//  Created by Lucas Leonardo Freitas on 04/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var valueLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.minimumValue = 0
        stepper.value = 0
        stepper.maximumValue = 100
        stepper.stepValue = 10
    }
    
    @IBAction func tappedStepper(_ sender: UIStepper) {
        valueLabel.text = String(Int(sender.value))
    }
}

