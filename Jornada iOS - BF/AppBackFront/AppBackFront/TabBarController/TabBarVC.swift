//
//  TabBarVC.swift
//  AppBackFront
//
//  Created by Lucas Leonardo Freitas on 13/11/24.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        let home = UINavigationController(rootViewController: HomeVC())
        let wallet = UINavigationController(rootViewController: WalletVC())
        let profile = UINavigationController(rootViewController: ProfileVC())

        setViewControllers([home, wallet, profile], animated: true)
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor(red: 130/255, green: 26/255, blue: 201/255, alpha: 1.0)
        
        let tabBarApperance: UITabBarAppearance = UITabBarAppearance()
        tabBarApperance.configureWithDefaultBackground()
        tabBarApperance.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 26/255, alpha: 1.0)
        tabBar.standardAppearance = tabBarApperance
        tabBar.scrollEdgeAppearance = tabBarApperance
        
        guard let items = tabBar.items else { return }
        items[0].image = UIImage(systemName: "trash")
        items[1].image = UIImage(systemName: "wallet.pass")
        items[2].image = UIImage(systemName: "rectangle.portrait.and.arrow.right.fill")
    }

}
