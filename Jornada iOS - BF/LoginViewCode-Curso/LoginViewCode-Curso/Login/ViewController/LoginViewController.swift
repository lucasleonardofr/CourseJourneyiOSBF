//
//  ViewController.swift
//  LoginViewCode-Curso
//
//  Created by Lucas Leonardo Freitas on 26/03/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate = self
        self.loginScreen?.configTextFieldDelegate(delegate: self)
    }
    

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension LoginViewController: LoginScreenProtocol {
    func actionLoginButton() {
        print(" Deu certo LoginButton ")
    }
    
    func actionRegisterButton() {
        print(" Deu certo RegisterButton ")
        let viewController: RegisterViewController =  RegisterViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    

}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.loginScreen?.validaTextField()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
