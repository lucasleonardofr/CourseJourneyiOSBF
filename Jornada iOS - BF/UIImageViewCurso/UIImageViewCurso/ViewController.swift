//
//  ViewController.swift
//  UIImageViewCurso
//
//  Created by Lucas Leonardo Freitas on 04/06/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        logoImageView.image = UIImage(named: "imagemTeste")
//        logoImageView.image = UIImage(systemName: "folder")
        logoImageView.isHighlighted = true
        logoImageView.highlightedImage = UIImage(named: "imagemTeste")
        
        logoImageView.contentMode = .scaleAspectFit
    }


}

