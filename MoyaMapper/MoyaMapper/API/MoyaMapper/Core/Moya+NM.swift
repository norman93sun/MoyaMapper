//
//  Moya+NM.swift
//  GoldExchange
//
//  Created by apple on 2020/5/18.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import Foundation
import Moya

protocol MoyaAddable {
    var cacheKey: String? { get }
    var isShowHud: Bool { get }
}

