//
//  ZDTabBarController.swift
//  ZDDouYu
//
//  Created by charlicar on 2017/2/25.
//  Copyright © 2017年 Charlicar. All rights reserved.
//

import UIKit

class ZDTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildControllers()
    }
    ///包装子控制器
    func addChildViewController(viewController : UIViewController,tittle : String,imageName : String) {
        let nav = ZDNavigationController(rootViewController: viewController)
        nav.navigationBar.isTranslucent = false
        viewController.tabBarItem.image = UIImage(named: imageName)
        viewController.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        tabBar.tintColor = UIColor.orange
        tabBar.isTranslucent = false
        nav.tabBarItem.title = tittle
        addChildViewController(nav)
        
    }
    ///添加子控制器
    func addChildControllers() {
        addChildViewController(viewController: ZDHomeViewController(), tittle: "首页", imageName: "tabHome")
        addChildViewController(viewController: ZDLiveViewController(), tittle: "直播", imageName: "tabLiving")
        addChildViewController(viewController: ZDFollowViewController(), tittle: "关注", imageName: "tabFocus")
        addChildViewController(viewController: ZDProfileViewController(), tittle: "我的", imageName: "tabMine")
    }

}
