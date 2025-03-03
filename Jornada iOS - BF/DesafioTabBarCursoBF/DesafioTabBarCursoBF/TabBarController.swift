//
//  TabBarController.swift
//  DesafioTabBarCursoBF
//
//  Created by Lucas Leonardo Freitas on 17/06/24.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTabBarItems()
        self.configTabBar()
    }
    

    func configTabBarItems() {
        guard let items = tabBar.items else { return }
        items[0].title = "Tela 01"
        items[0].image = UIImage(systemName: "person.crop.circle.fill")
        items[1].title = "Tela 02"
        items[1].image = UIImage(systemName: "phone.circle.fill")
        items[2].title = "Tela 03"
        items[2].image = UIImage(systemName: "trash.circle.fill")

    }
    
    func configTabBar() {
        tabBar.layer.cornerRadius = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }

}
