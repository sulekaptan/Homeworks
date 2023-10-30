//
//  TabViewController.swift
//  Homework-1
//
//  Created by Şule Kaptan on 18.10.2023.
//

import UIKit

final class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tab1 = HomeViewController()
        //tab1.title = "Menu"
        
        let tab2 = ProfileViewController()
        tab2.title = "Offers"
        
        let tab3 = ProfileViewController()
        tab3.title = "Home"
        
        let tab4 = ProfileViewController()
        tab4.title = "Profile"
        
        let tab5 = ProfileViewController()
        tab5.title = "More"
        
        let nav1 = UINavigationController(rootViewController: tab1)
        let nav2 = UINavigationController(rootViewController: tab2)
        let nav3 = UINavigationController(rootViewController: tab3)
        let nav4 = UINavigationController(rootViewController: tab4)
        let nav5 = UINavigationController(rootViewController: tab5)
        
        nav1.tabBarItem = UITabBarItem(title: "Menu", image: UIImage(systemName: "rectangle.grid.2x2.fill"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Offers", image: UIImage(systemName: "tag.fill"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.fill"), tag: 3)
        nav5.tabBarItem = UITabBarItem(title: "More", image: UIImage(systemName: "ellipsis.circle.fill"), tag: 3)
        
        tabBar.backgroundColor = UIColor(white: 1, alpha: 1)
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        tabBar.layer.shadowRadius = 4
        tabBar.layer.shadowOpacity = 0.5
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.orange], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.orange], for: .selected)
        UITabBar.appearance().tintColor = UIColor.orange
        
        setViewControllers([nav1, nav2, nav3, nav4, nav5], animated: true)

    }
    

}
