//
//  ViewController.swift
//  Exemplo1
//
//  Created by Lucas Leonardo Freitas on 20/08/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var texto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func vai(_ sender: Any) {
        titulo.text = texto.text
    }
    
}

