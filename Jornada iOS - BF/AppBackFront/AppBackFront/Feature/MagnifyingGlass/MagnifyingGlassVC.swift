//
//  MagnifyingGlassVC.swift
//  AppBackFront
//
//  Created by Lucas Leonardo Freitas on 15/11/24.
//

import UIKit
import AlamofireImage

class MagnifyingGlassVC: UIViewController {
    
    var screen: MagnifyingGlassScreen?
    var urlImage: String
    
    override func loadView() {
        screen = MagnifyingGlassScreen()
        view = screen
    }
    
    required init(urlImage: String) {
        self.urlImage = urlImage
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.setDelegate(delegate: self)
        configImage()
    }
    
    private func configImage() {
        guard let url = URL(string: urlImage) else { return }
        screen?.nftImageView.af.setImage(withURL: url)
    }
}

extension MagnifyingGlassVC: MagnifyingGlassScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
}
