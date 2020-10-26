//
//  LibManager.swift
//  GoldExchange
//
//  Created by apple on 2020/4/20.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import Foundation

#if DEBUG
import DoraemonKit
#endif


class LibManager {
    
    static let shared = LibManager()
    
    private init() {}
    
    func setupLibs(with launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        
        #if DEBUG
        Bundle.init(path: "/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle")?.load()
        #endif
        
        #if DEBUG
//        FLEXManager.shared.registerSimulatorShortcut(withKey: "d", modifiers: .command, action: {
//            FLEXManager.shared.toggleExplorer()
//        }, description: "Open FLEXManager")
        DoraemonManager.shareInstance().install(withPid: "3676610f5f79969736cb5e15a3a99328")
        #endif
        
        Bugly.start(withAppId: "ba6245093c")
                
    }
    
}
