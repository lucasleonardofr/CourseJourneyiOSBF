//
//  ViewController.swift
//  PrimeiroProjetoViewCodeCurso
//
//  Created by Lucas Leonardo Freitas on 26/06/24.
//

import UIKit

class LoginVC: UIViewController {
    
    private var loginScreen: LoginScreen?
    private var viewModel: LoginViewModel = LoginViewModel ()
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden =  true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.setDelegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
        viewModel.setDelegate(delegate: self)
    }
}

extension LoginVC: LoginScreenProtocol {
    func tappedLoginButton() {
        viewModel.login(email: loginScreen?.emailTextField.text ?? "",
                        password: loginScreen?.passwordTextField.text ?? "")
    }
    
    func tappedRegisterButton() {
        let vc = RegisterVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension LoginVC: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        let email: String = loginScreen?.emailTextField.text ?? ""
        let password: String = loginScreen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            loginScreen?.loginButton.isEnabled = true
            loginScreen?.loginButton.backgroundColor = .blue
        } else {
            loginScreen?.loginButton.isEnabled = false
            loginScreen?.loginButton.isEnabled = false
            loginScreen?.loginButton.backgroundColor = .lightGray
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}

extension LoginVC: LoginViewModelProtocol {
    func successLogin() {
        let vc: HomeVC = HomeVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func errorLogin(errorMessage: String) {
        Alert(controller: self).showAlertInformation(title: "Ops, error Login!", message: errorMessage)
    }
}
