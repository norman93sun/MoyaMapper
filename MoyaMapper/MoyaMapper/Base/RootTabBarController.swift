//
//  RootTabBarController.swift
//  GoldExchange
//
//  Created by apple on 2020/5/14.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {
    
    let elements:[(String, String, String)]! = [
        ("首页",  "tabbar_icon_0",    "tabbar_icon_0_select"),
        ("行情",  "tabbar_icon_1",    "tabbar_icon_1_select"),
        ("交易",  "tabbar_icon_2",    "tabbar_icon_2_select"),
        ("直播",  "tabbar_icon_3",    "tabbar_icon_3_select"),
        ("资讯",  "tabbar_icon_4",    "tabbar_icon_4_select")
    ]
    
    lazy var homeController = HomeController()
    lazy var marketController = ViewController()
    lazy var tradeController = ViewController()
    lazy var liveController = ViewController()
    lazy var newsController = ViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setControllers()

    }
    
    func setControllers() {
        
        let homeNavi = NavigationController(rootViewController: homeController)
        let marketNavi = NavigationController(rootViewController: marketController)
        let tradeNavi = NavigationController(rootViewController: tradeController)
        let liveNavi = NavigationController(rootViewController: liveController)
        let newsNavi = NavigationController(rootViewController: newsController)

        self.viewControllers = [homeNavi, marketNavi, tradeNavi, liveNavi, newsNavi]
        self.tabBar.backgroundColor = .white
        self.view.backgroundColor = .white
        
        self.delegate = self
        
        let titleAttributesSel = [
            NSAttributedString.Key.foregroundColor: UIColor(hexString: "313131"),
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10)
        ]
        
        let titleAttributesNor = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10)
        ]
        
        for (index, (name, nor_img, sel_img)) in elements.enumerated() {
            
            let item = self.tabBar.items?[index]
            item?.title = name
            item?.setTitleTextAttributes(titleAttributesNor, for: .normal)
            item?.setTitleTextAttributes(titleAttributesSel as [NSAttributedString.Key : Any], for: .selected)
            
            let imgNor = UIImage(named: nor_img)
            let imgSel = UIImage(named: sel_img)
            item?.image = imgNor?.withRenderingMode(.alwaysOriginal)
            item?.selectedImage = imgSel?.withRenderingMode(.alwaysOriginal)
        }
        
    }
    
}


extension RootTabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
    }
    
}
