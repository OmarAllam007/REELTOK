//
//  TabBarViewController.swift
//  reeltik
//
//  Created by Omar Khaled on 09/06/2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupControllers()
    }
    
    
    private func setupControllers(){
        let home = HomeViewController()
        let explore = ExploreViewController()
        let camera = CameraViewController()
        let notifications = NotificationsViewController()
        let profile = ProfileViewController()
        
        let homeNav = UINavigationController(rootViewController: home)
        let exploreNav = UINavigationController(rootViewController: explore)
        let notificationsNav = UINavigationController(rootViewController: notifications)
        let profileNav = UINavigationController(rootViewController: profile)
        
        home.title = "Home"
        explore.title = "Explore"
        notifications.title = "Notifications"
        profile.title = "Profile"
        
        homeNav.tabBarItem = UITabBarItem(title:nil, image: UIImage(systemName: "house"), tag: 1)
        explore.tabBarItem = UITabBarItem(title:nil, image: UIImage(systemName: "safari"), tag: 2)
        camera.tabBarItem = UITabBarItem(title:nil, image: UIImage(systemName: "camera"), tag: 3)
        notifications.tabBarItem = UITabBarItem(title:nil, image: UIImage(systemName: "bell"), tag: 4)
        profileNav.tabBarItem = UITabBarItem(title:nil, image: UIImage(systemName: "person.circle"), tag: 5)
        
        setViewControllers([homeNav, exploreNav, camera , notificationsNav, profileNav],animated: true)
    }
}
