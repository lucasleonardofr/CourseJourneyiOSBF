//
//  SelectionVC.swift
//  NotificationCenterEProtocolo
//
//  Created by Lucas Leonardo Freitas on 31/08/24.
//

import UIKit

protocol SelectionVCProtocol: AnyObject {
    func updateMacbook()
    func updateImac()
}

class SelectionVC: UIViewController {
    private weak var delegate: SelectionVCProtocol?
    
    public func delegate(delegate: SelectionVCProtocol?) {
        self.delegate = delegate
    }
    
    var selectionScreen: SelectionScreen?
    
    override func loadView() {
        selectionScreen = SelectionScreen()
        view = selectionScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectionScreen?.delegate(delegate: self)
    }
}

extension SelectionVC: SelectionScreenProtocol {
    func tappedMacbookButton() {
        print(#function)
       // NotificationCenter.default.post(name: Notification.Name("macbook"), object: nil)
        delegate?.updateMacbook()
        dismiss(animated: true)
    }
    
    func tappedImacButton() {
        print(#function)
        //NotificationCenter.default.post(name: Notification.Name("imac"), object: nil)
        delegate?.updateImac()
        dismiss(animated: true)
    }
}
