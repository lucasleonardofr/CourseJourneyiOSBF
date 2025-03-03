//
//  ViewController.swift
//  NotificationCenterEProtocolo
//
//  Created by Lucas Leonardo Freitas on 05/07/24.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.delegate(delegate: self)
        configObserver()
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(updateMacbook(notification:)),
                                               name: Notification.Name("macbook"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(updateImac(notification:)),
                                               name: Notification.Name("imac"),
                                               object: nil)
    }
    
    @objc func updateMacbook(notification: NSNotification) {
        homeScreen?.logoImageView.image = UIImage(named: "macbook_pro")
        homeScreen?.descriptionLabel.text = "Mac Pro toppisimo"
        view.backgroundColor = .red
    }
    @objc func updateImac(notification: NSNotification) {
        homeScreen?.logoImageView.image = UIImage(named: "imac_pro")
        homeScreen?.descriptionLabel.text = "Imac das galaxias"
        view.backgroundColor = .cyan
    }
}
extension HomeVC: HomeScreenProtocol {
    func tappedChooseButton() {
        let vc = SelectionVC()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate(delegate: self)
        present(vc, animated: true)
    }
}


extension HomeVC: SelectionVCProtocol {
    func updateMacbook() {
        homeScreen?.logoImageView.image = UIImage(named: "macbook_pro")
        homeScreen?.descriptionLabel.text = "Mac Pro toppisimo"
        view.backgroundColor = .red
    }
    
    func updateImac() {
        homeScreen?.logoImageView.image = UIImage(named: "imac_pro")
        homeScreen?.descriptionLabel.text = "Imac das galaxias"
        view.backgroundColor = .cyan
    }
}
