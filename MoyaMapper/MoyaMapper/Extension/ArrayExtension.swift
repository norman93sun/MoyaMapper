//
//  ArrayExtension.swift
//  GoldExchange
//
//  Created by apple on 2020/4/15.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import Foundation


extension Array where Element == Double {

    /*
    N日均线计算方法:
    
    N日收盘价之和除以N,以此向后类推
    */
    func getMA(day: Int) -> [Double] {

        let count = day - 1
        let result: [Double] = self.indices.map { index -> Double in
            guard index > count else { return Double.nan }
            return self[index - count ... index].reduce(0.0, +) / Double(day)
        }
        return result

//        let result: [Double] = self.indices.map { $0 < count ? Double.nan : self[$0-count...$0].reduce(0,+) / day }
//        var movingSum = 0.0
//        var outputArray: [Double] = []
//
//        for (index, element) in self.enumerated() {
//
//            movingSum += element
//
//            if index >= day - 1 {
//
//                if index >= day {
//                    movingSum -= self[index - day]
//                }
//
//                outputArray.append(movingSum / Double(day))
//
//            } else {
//
//                outputArray.append(Double.nan)
//
//            }
//
//        }
//
//        return outputArray
    }
    
}
