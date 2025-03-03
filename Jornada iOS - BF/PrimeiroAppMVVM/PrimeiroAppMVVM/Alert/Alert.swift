//
//  Alert.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Leonardo Freitas on 12/11/24.
//

import UIKit

class Alert {
    private let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    public func showAlertInformation(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let button = UIAlertAction(title: "Ok", style: .default)
        alertController.addAction(button)
        controller.present(alertController, animated: true)
    }
}
