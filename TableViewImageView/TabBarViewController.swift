//
//  TabBarViewController.swift
//  TableViewImageView
//
//  Created by gsm10 on 2021/10/12.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let TableViewController = UINavigationController(rootViewController: ViewController())
        let about = AboutControllerViewController()
        TableViewController.title = "memory"
        about.title = "About"
        UITabBar.appearance().backgroundColor = .lightGray.withAlphaComponent(0.15)
        
        tabBar.layer.borderWidth = 0.50
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.clipsToBounds = true
        self.setViewControllers([TableViewController, about], animated: false)
    }

}
