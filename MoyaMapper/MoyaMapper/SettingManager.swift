//
//  SettingManager.swift
//  GoldChange
//
//  Created by Norman Sun on 2020/4/3.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import Foundation


class SettingManager {
    
    static let shared = SettingManager()
    
    var deviceToken: String = ""
    
    private init() {}
    
}
