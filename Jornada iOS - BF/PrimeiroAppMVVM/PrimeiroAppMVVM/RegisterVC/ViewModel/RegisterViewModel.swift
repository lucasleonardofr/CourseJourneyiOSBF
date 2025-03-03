//
//  LoginViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Leonardo Freitas on 12/11/24.
//

import UIKit
import FirebaseAuth

protocol RegisterViewModelProtocol: AnyObject {
    func successRegister()
    func errorRegister(errorMessage: String)
}

class RegisterViewModel {
    private weak var delegate: RegisterViewModelProtocol?
    private var auth = Auth.auth()
    
    public func setDelegate(delegate: RegisterViewModelProtocol) {
        self.delegate = delegate
    }
    
    public func registerUser(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { authResult, error in
            if error == nil {
                print("sucesso cadastro")
                self.delegate?.successRegister()
            } else {
                print("Error cadastro, error: \(error?.localizedDescription ?? "")")
                self.delegate?.errorRegister(errorMessage: error?.localizedDescription ?? "")
            }
        }
    }
}
