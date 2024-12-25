//
//  MainTabBarController.swift
//  NomikStrategyStock
//
//  Created by Pinocchio on 2024/12/24.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = HomeViewController()
        let vc2 = StrategyViewController()
        let vc3 = AutoTradingViewController()
        let vc4 = OptionalViewController()
        let vc5 = SettingViewController()
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        let nav4 = UINavigationController(rootViewController: vc4)
        let nav5 = UINavigationController(rootViewController: vc5)
        
        nav1.tabBarItem.image = UIImage(systemName: "lightbulb.led.wide")
        nav2.tabBarItem.image = UIImage(systemName: "brain.head.profile")
        nav3.tabBarItem.image = UIImage(systemName: "macpro.gen3")
        nav4.tabBarItem.image = UIImage(systemName: "tray.full")
        nav5.tabBarItem.image = UIImage(systemName: "ipod")
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        nav4.navigationBar.prefersLargeTitles = true
        nav5.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3, nav4, nav5], animated: true)
        
    }
}

