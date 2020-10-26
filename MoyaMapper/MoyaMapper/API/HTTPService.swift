//
//  HTTPService.swift
//  GoldChange
//
//  Created by Norman Sun on 2020/4/3.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import Alamofire
//import SwiftyJSON

/// API HOST
let hostUrl = "http://115.29.36.212:5062"

/// Resp: API 返回实体类
struct Resp {
    var code: Int = 0
    var msg: String = ""
}

/// API 成功返回闭包
typealias SuccessBlock = (Resp, Any) -> Void
/// API 失败返回闭包
typealias FailureBlock = (Resp) -> Void


/// TheHttpService 单例
let TheHttpService: HTTPService = HTTPService()

/// class HTTPService
class HTTPService: NSObject {
    
    let manager: Session = {
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 40
        config.timeoutIntervalForResource = 40
        let mgr = Alamofire.Session(configuration: config)
        return mgr
    }()
    
    var request: Request?
    
    class func service() -> HTTPService {
        return HTTPService()
    }
    
    override init() {
        super.init()
    }
    
    
    func getHeaders() -> HTTPHeaders {
        let headers: [String : String] =
            [
                "Content-Type": "application/json",
                "BrkSESSION": SettingManager.shared.deviceToken
        ]
        return HTTPHeaders(headers)
    }
    
    
    private class func fullUrl(url: String) -> String {
        return hostUrl + url
    }
    
    
    @discardableResult
    func get(url: String, params: [String: Any]?, success: @escaping SuccessBlock, failure: @escaping FailureBlock) -> Self {
        
        let service = HTTPService()
        let fullUrl = HTTPService.fullUrl(url: url)
        
        service.request = manager.request(fullUrl, parameters: params, encoding: URLEncoding.default, headers: service.getHeaders()).responseJSON { (jsonResp) in
            self.responseJSONResult(jsonResp: jsonResp, url: url,success: success, failure: failure)
        }
        
        return self
    }
    
    @discardableResult
    func post(url: String, params: [String: Any]?, success: @escaping SuccessBlock, failure: @escaping FailureBlock) -> Self {
        
        let service = HTTPService()
        let fullUrl = HTTPService.fullUrl(url: url)
        
        service.request = manager.request(fullUrl, method: .post, parameters: params, encoding: JSONEncoding.default, headers: service.getHeaders()).responseJSON { (jsonResp) in
            self.responseJSONResult(jsonResp: jsonResp, url: url,success: success, failure: failure)
        }
        
        return self
    }
    
    func responseJSONResult(jsonResp: DataResponse<Any, AFError>, url: String, success: @escaping SuccessBlock, failure: @escaping FailureBlock) {
        
//        var resp = Resp()
//        switch jsonResp.result {
//        case .success(let value):
//            let json = JSON(value)
//            if json["Msg"].isEmpty {
//                print(json)
//                success(resp, json as Any)
//            } else {
//                print(json)
//                resp.msg = json["Msg"].stringValue
//                failure(resp)
//            }
////            switch json["Ret"].intValue {
////            case 1:
////
////            default:
////
////            }
//        case .failure(let error):
//            resp.msg = error.localizedDescription
//            failure(resp)
//        }
    }
    
}


