//
//  AppDelegate.swift
//  GoldChange
//
//  Created by Norman Sun on 2020/4/3.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        LibManager.shared.setupLibs(with: launchOptions)
        
        setRootController()
        
        return true
    }
    
    func setRootController() -> Void {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let initialViewController = RootTabBarController()
        
        self.window?.rootViewController = initialViewController
        self.window?.makeKeyAndVisible()
        
    }
    
}

