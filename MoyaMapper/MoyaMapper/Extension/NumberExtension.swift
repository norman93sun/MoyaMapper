//
//  NumberExtension.swift
//  GoldChange
//
//  Created by apple on 2020/4/13.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import Foundation

extension Double {

    /// 百分比
    var percentStr: String {
        let num = NSNumber(value: self)
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        let ratio = formatter.string(from: num) ?? ""
        return ratio
    }
    
    
    /// 小数点两位
    var fractionDigitsStr: String {
        let rounded = self.rounded(numberOfDecimalPlaces: 2, rule: .up)
        let str = String(format: "%.2f", rounded)
        return str
    }

}
