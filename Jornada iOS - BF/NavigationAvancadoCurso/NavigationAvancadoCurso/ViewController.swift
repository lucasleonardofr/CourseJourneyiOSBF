//
//  ViewController.swift
//  NavigationAvancadoCurso
//
//  Created by Lucas Leonardo Freitas on 05/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedGoScreenButton(_ sender: UIButton) {
        //MARK: - Metodo simples de navegaçao
//        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
//        // Abordagem para apresentar um Modal
////        vc?.modalPresentationStyle = .fullScreen
////        self.present(vc ?? UIViewController(), animated: true)
//        
//        // Abordagem para chamar uma NavigationController
//      
//        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        //MARK: - Transitando dados entre telas
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(identifier: "Tela02ViewController"){ coder in
            return Tela02ViewController(coder: coder, name: self.nameTextField.text ?? "")
        }
    
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}

