//
//  HomeModel.swift
//  GoldExchange
//
//  Created by apple on 2020/5/15.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import ObjectMapper

//MARK: - HomeModel
struct HomeModel: Mappable, Codable {
    
    var agreementList : [AgreementList]?
    var bannerList : [BannerList]?
    var chatroomList : [ChatroomList]?
    var dailyList : [DailyList]?
    var financeInfoList : [FinanceInfoList]?
    var operationLocationList : [OperationLocationList]?
    var yesterdayProfitLossRankFlag : Int?
    var yesterdayProfitLossRankList : [YesterdayProfitLossRankList]?
    
    init?(map: Map) { }
    mutating func mapping(map: Map) {
        agreementList <- map["agreementList"]
        bannerList <- map["bannerList"]
        chatroomList <- map["chatroomList"]
        dailyList <- map["dailyList"]
        financeInfoList <- map["financeInfoList"]
        operationLocationList <- map["operationLocationList"]
        yesterdayProfitLossRankFlag <- map["yesterdayProfitLossRankFlag"]
        yesterdayProfitLossRankList <- map["yesterdayProfitLossRankList"]
    }
}


//MARK: - YesterdayProfitLossRankList
struct YesterdayProfitLossRankList: Mappable, Codable {
    
    var direction : String?
    var nickName : String?
    var sn : Int?
    var totalProfitLoss : Int?
    var totalProfitLossPct : String?
    
    init?(map: Map) { }
    mutating func mapping(map: Map) {
        direction <- map["direction"]
        nickName <- map["nickName"]
        sn <- map["sn"]
        totalProfitLoss <- map["totalProfitLoss"]
        totalProfitLossPct <- map["totalProfitLossPct"]
    }
}


//MARK: - OperationLocationList
struct OperationLocationList: Mappable, Codable {
    
    var createTime : String?
    var id : Int?
    var imageUrl : String?
    var orders : Int?
    var remark : String?
    var title : String?
    var type : Int?
    var url : String?
    
    init?(map: Map) { }
    mutating func mapping(map: Map) {
        createTime <- map["createTime"]
        id <- map["id"]
        imageUrl <- map["imageUrl"]
        orders <- map["orders"]
        remark <- map["remark"]
        title <- map["title"]
        type <- map["type"]
        url <- map["url"]
    }
}


//MARK: - FinanceInfoList
struct FinanceInfoList: Mappable, Codable {
    
    var content : String?
    var contentStyle : Int?
    var externalDate : String?
    var externalTime : String?
    var keywords : String?
    
    init?(map: Map) { }
    mutating func mapping(map: Map) {
        content <- map["content"]
        contentStyle <- map["contentStyle"]
        externalDate <- map["externalDate"]
        externalTime <- map["externalTime"]
        keywords <- map["keywords"]
    }
}



//MARK: - DailyList
struct DailyList: Mappable, Codable {
    
    var channelInfo : String?
    var dailyTime : String?
    var dailyTitle : String?
    var dailyUrl : String?
    var id : Int?
    var imageUrl : String?
    var sysCreateDateStr : String?
    var sysCreateTimeStr : String?
    
    init?(map: Map) { }
    mutating func mapping(map: Map) {
        channelInfo <- map["channelInfo"]
        dailyTime <- map["dailyTime"]
        dailyTitle <- map["dailyTitle"]
        dailyUrl <- map["dailyUrl"]
        id <- map["id"]
        imageUrl <- map["imageUrl"]
        sysCreateDateStr <- map["sysCreateDateStr"]
        sysCreateTimeStr <- map["sysCreateTimeStr"]
    }
}


//MARK: - ChatroomList
struct ChatroomList: Mappable, Codable {
    
    var analystName : String?
    var chatroomId : Int?
    var easemobChatroomId : String?
    var easemobLiveId : String?
    var remark1 : String?
    var remark2 : String?
    var status : Int?
    var statusDesc : String?
    var theme : String?
    var userId : String?
    var videoPushUrl : String?
    
    init?(map: Map) { }
    mutating func mapping(map: Map) {
        analystName <- map["analystName"]
        chatroomId <- map["chatroomId"]
        easemobChatroomId <- map["easemobChatroomId"]
        easemobLiveId <- map["easemobLiveId"]
        remark1 <- map["remark1"]
        remark2 <- map["remark2"]
        status <- map["status"]
        statusDesc <- map["statusDesc"]
        theme <- map["theme"]
        userId <- map["userId"]
        videoPushUrl <- map["videoPushUrl"]
    }
}



//MARK: - BannerList
struct BannerList: Mappable, Codable {
    
    var imageUrl : String?
    var pageUrl : String?
    
    init?(map: Map) { }
    mutating func mapping(map: Map) {
        imageUrl <- map["imageUrl"]
        pageUrl <- map["pageUrl"]
    }
}


//MARK: - AgreementList
struct AgreementList: Mappable, Codable {
    
    var agreementAbbr : String?
    var agreementName : String?
    var agreementNo : String?
    var agreementType : String?
    
    init?(map: Map) { }
    mutating func mapping(map: Map) {
        agreementAbbr <- map["agreementAbbr"]
        agreementName <- map["agreementName"]
        agreementNo <- map["agreementNo"]
        agreementType <- map["agreementType"]
    }
}
