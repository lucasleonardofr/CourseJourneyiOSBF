//
//  ViewController.swift
//  ProgressViewCurso
//
//  Created by Lucas Leonardo Freitas on 03/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // progressView.progress = 0.5
        //parte que esta preenchida
        progressView.tintColor = .green
        //parte que n esta preenchida
        progressView.trackTintColor = .lightGray.withAlphaComponent(0.6)
        progressView.progressViewStyle = .bar
        
        //manipulando as particoes do progressView ja que ele por default é 10. 0.0 ate 1.0
        let total = Progress(totalUnitCount: 100)
        total.completedUnitCount = 25
        progressView.setProgress(Float(total.fractionCompleted), animated: true)
    }
    

}

