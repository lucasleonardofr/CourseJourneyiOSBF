//
//  ViewController.swift
//  UISwitchCurso
//
//  Created by Lucas Leonardo Freitas on 04/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stateSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stateSwitch.isOn = false
        stateSwitch.onTintColor = .blue
        stateSwitch.tintColor = .yellow
        stateSwitch.thumbTintColor = .cyan
     
    }

    @IBAction func tappedSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .green
        } else {
            view.backgroundColor = .red
        }
    }
}

