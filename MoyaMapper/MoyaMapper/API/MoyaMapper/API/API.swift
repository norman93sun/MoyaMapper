//
//  API.swift
//  GoldExchange
//
//  Created by apple on 2020/5/18.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import Foundation
import Moya

enum NMAPI {
    case getMallHome
    case getGoodsList
}

extension NMAPI: TargetType, MoyaAddable {
    
    var parameters: [String : Any]? {
        switch self {
        case .getGoodsList:
            return ["start": "0",
                    "size": "10"]
        default: return nil
        }
    }
      
      var path: String {
          switch self {
          case .getMallHome: return "/common/getHomeInfo"
          case .getGoodsList: return "/chatRoom/getChatroomInfoList"
          }
      }
      
      var method: Moya.Method {
          switch self {
              //        case .homeInfo:
          //            return .get
          default: return .post
          }
      }
      
      var baseURL: URL {
          return URL(string: "https://bjapi.yishouhuangjin.com")!
      }
      
      var sampleData: Data {
          return "".data(using: String.Encoding.utf8)!
      }
      
      var headers: [String : String]? {
          var header: [String: String] = [:]
          header["version"] = "1.10.2"
          header["channel"] = "lc_appStore"
          header["deviceId"] = UIDevice.current.identifierForVendor?.uuidString
          header["platform"] = "Phone"
          header["scene"] = "iOS"
          return header
      }
      
      var task: Task {
          switch self.method {
          case .post: return .requestParameters(parameters: self.parameters ?? [:], encoding: JSONEncoding.default)
          default: return .requestParameters(parameters: self.parameters ?? [:], encoding: URLEncoding.default)
          }
      }
      
    var cacheKey: String? {
        switch self {
            case .getMallHome:
                return "mall home cache key"
            default:
                return nil
        }
    }
    
    var isShowHud: Bool {
        switch self {
            case .getMallHome:
                return true
            default:
                return false
        }
    }
}
