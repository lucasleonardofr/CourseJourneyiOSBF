//
//  AlertController.swift
//  AppBackFront
//
//  Created by Lucas Leonardo Freitas on 13/11/24.
//

import UIKit

class AlertController: NSObject {
    var controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func getAlert(title: String, message: String, completion: (() -> Void)? = nil)  {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .cancel) { share in
            completion?()
        }
        alertController.addAction(ok)
        controller.present(alertController, animated: true)
    }
    
}
