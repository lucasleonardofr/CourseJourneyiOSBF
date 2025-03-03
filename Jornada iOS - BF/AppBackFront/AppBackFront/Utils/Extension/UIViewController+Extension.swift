//
//  UIViewController+Extension.swift
//  AppBackFront
//
//  Created by Lucas Leonardo Freitas on 13/11/24.
//

import UIKit

extension UIViewController {
    func dimissKeyboard() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
