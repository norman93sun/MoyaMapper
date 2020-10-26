//
//  NavigationController.swift
//  GoldExchange
//
//  Created by apple on 2020/5/14.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barTintColor = .white
        
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(hexString: "32324B")!,
                                                  NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)]
    }
    
}
