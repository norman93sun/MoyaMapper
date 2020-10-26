//
//  NetworkError.swift
//  GoldExchange
//
//  Created by apple on 2020/5/18.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import Foundation

public struct ResponseCode {
    static let successResponseStatus = [0000, 200]     // 接口成功调用
    static let forceLogoutError = 100000     // 请重新登录
}

// 网络错误处理枚举
public enum NetworkError: Error  {
    // json解析失败
    case jsonSerializationFailed(message: String)
    // json转字典失败
    case jsonToDictionaryFailed(message: String)
    
    // 登录状态变化
    case loginStateIsexpired(message: String?)
    // 服务器返回的错误
    case serverResponse(message: String?, code: Int)
    
    // 自定义错误
    case exception(message: String)
}

extension NetworkError {
    var message: String? {
        switch self {
        case let .serverResponse(msg, _):
            return msg
        default:
            return nil
        }
    }
    
    var code: Int {
        switch self {
        case let .serverResponse(_, code):
            return code
        default:
            return -1
        }
    }
}
