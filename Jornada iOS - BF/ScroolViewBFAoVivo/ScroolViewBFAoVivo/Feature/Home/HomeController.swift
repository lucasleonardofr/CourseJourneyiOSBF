//
//  ViewController.swift
//  ScroolViewBFAoVivo
//
//  Created by Lucas Leonardo Freitas on 08/06/24.
//

import UIKit

class HomeController: UIViewController {
    var homeView:  HomeView?
    
    override func loadView() {
        homeView = HomeView()
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
