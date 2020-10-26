//
//  NetworkManager.swift
//  GoldExchange
//
//  Created by apple on 2020/5/18.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import Foundation
import ObjectMapper

// 分页
struct PageModel {
    
}

class BaseResponse {
    
    var code: Int {
        if let intCode = json["code"] as? Int {
            return intCode
        }
        if let stringCode = json["code"] as? String, let intCode = stringCode.int {
            return intCode
        }
        return -1
    }
    
    var message: String? {
        guard let temp = json["msg"] as? String else {
            return nil
        }
        return temp
    }
    
    var jsonData: Any? {
        guard let temp = json["data"] else {
            return nil
        }
        return temp
    }
    
    var serverTime: Int? {
        guard let temp = json["serverTime"] as? Int else {
            return nil
        }
        return temp
    }
    
    
    let json: [String : Any]
    
    init?(data: Any) {
        guard let temp = data as? [String : Any] else {
            return nil
        }
        self.json = temp
    }
    
}

class ListResponse<T>: BaseResponse where T: Mappable {
    var dataList: [T]? {
        guard code == 0,
            let jsonData = jsonData as? [String : Any],
            let listData = jsonData["resultList"] else {
                return nil
        }
        return Mapper().mapArray(JSONArray: listData as! [[String : Any]])
    }
    
    var page: PageModel? {
        // PageModel的解析
        return nil
    }
}

class ModelResponse<T>: BaseResponse where T: Mappable {
    var data: T? {
        guard code == 0,
            let tempJSONData = jsonData else {
                return nil
        }
        return Mapper().map(JSON: tempJSONData as! [String : Any])
    }
}
