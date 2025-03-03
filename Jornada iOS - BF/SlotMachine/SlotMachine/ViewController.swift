//
//  ViewController.swift
//  SlotMachine
//
//  Created by Lucas Leonardo Freitas on 20/08/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var figurinhas: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func puxarAlavanca(_ sender: Any) {
        for i in 0...2{
            let sorteio = Int.random(in: 1...9)
            figurinhas[i].image = UIImage(named: "slot\(sorteio)")
            
        }
    }
    
}

