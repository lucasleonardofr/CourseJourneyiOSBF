//
//  ViewController.swift
//  UISliderCurso
//
//  Created by Lucas Leonardo Freitas on 04/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 0
        slider.value = 0
        slider.maximumValue = 20
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = .green
        
    }

    @IBAction func tappedSlider(_ sender: UISlider) {
        print(Int(sender.value))
    }
    
}

