//
//  ViewController.swift
//  ElementosBasicosCurso
//
//  Created by Lucas Leonardo Freitas on 01/06/24.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOutlet
    
    @IBOutlet weak var bemVindoLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bemVindoLabel.text = "Lucas"
    }
    
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        view.backgroundColor = .gray
    }
    
}

