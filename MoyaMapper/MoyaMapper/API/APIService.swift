//
//  APIService.swift
//  GoldChange
//
//  Created by Norman Sun on 2020/4/3.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

//import SwiftyJSON
import SwifterSwift

extension HTTPService {
    
    func reqLogin(account: String, psw: String, success:@escaping SuccessBlock, failure: @escaping FailureBlock) {
//        let url = "/api/brk/login"
//        let params: [String:Any] = ["account": account, "password": psw]
//        self.post(url: url, params: params, success: { res,obj  in
//            SettingManager.shared.deviceToken = (obj as! JSON)["Msg"].stringValue
//            success(res,obj)
//        }, failure: failure)
    }
    
    func reqMainDic(success:@escaping SuccessBlock, failure: @escaping FailureBlock) {
//        let url = "/api/hq/getcodedic"
//        self.post(url: url, params: nil, success: success, failure: failure)
    }
    
    func reqLastTime(success:@escaping SuccessBlock, failure: @escaping FailureBlock) {
//        let url = "/api/hq/getlasttimedata"
//        self.post(url: url, params: nil, success: { resp, obj in
//            let models = (obj as! JSON)["Value"].arrayValue.map { LastTimeModel(fromJson: $0) }
//            success(resp, models)
//        }, failure: failure)
    }
    
    func reqMinHourChart(success:@escaping SuccessBlock, failure: @escaping FailureBlock) {
//        let url = "/api/hq/gettimeshardingdata"
//        self.post(url: url, params: ["main_name": "Au(T+D)", "sub_code": "10"], success: { resp, obj in
//            let models = (obj as! JSON)["Value"].arrayValue.map { ChartModel(fromJson: $0) }
//            success(resp, models)
//        }, failure: failure)
    }
        
//    func reqKLineChart( chartType: ChartType, success:@escaping SuccessBlock, failure: @escaping FailureBlock) {
//        let url = "/api/hq/getklinedata"
//        self.post(url: url, params: ["main_name": "Au(T+D)", "sub_code": chartType.rawValue], success: { resp, obj in
//            let models = (obj as! JSON)["Value"].arrayValue.map { ChartModel(fromJson: $0) }
//            success(resp, models)
//        }, failure: failure)
//    }
    
}
