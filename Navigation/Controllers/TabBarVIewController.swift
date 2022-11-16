//
//  TabBarVIewController.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class TabBarVIewController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarItem()
        setTabBarAppearance()
    }
    
    private func setupTabBarItem() {
        
        viewControllers = [
            
            createTabBarItem(viewController: FeedViewController(),
                             title: "Feed",
                             image: UIImage(systemName: "newspaper.circle.fill"), pageName: "Feed"),
            createTabBarItem(viewController: ProfileViewController(),
                             title: "Profile",
                             image: UIImage(systemName: "person.circle.fill"), pageName: "Profile")
        ]
    }
    
    private func createTabBarItem(viewController: UIViewController, title: String, image: UIImage?, pageName: String) -> UIViewController {
        
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        viewController.navigationItem.title = pageName
        
        
        return viewController
    }
    
    private func setTabBarAppearance() {
        
        let positionOnX: CGFloat = 25
        let positionOnY: CGFloat = 10
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        
        let roundLayer = CAShapeLayer()
        roundLayer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        roundLayer.shadowRadius = 15
        roundLayer.shadowOpacity = 5
        
        let bezierPath = UIBezierPath(roundedRect: CGRect(x: positionOnX, y: tabBar.bounds.minY - positionOnY, width: width, height: height), cornerRadius: height / 2)
        roundLayer.path = bezierPath.cgPath
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        tabBar.itemWidth = width / 3
        tabBar.itemPositioning = .centered
        
        roundLayer.fillColor = UIColor.MainWhite.cgColor
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .tabBarItemLight
    }
}
