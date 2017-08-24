//
//  APIResponseArticles.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class APIResponseArticles : Mappable {
    var total : Int = 0
    var articles =  [APIArticle]()
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        articles <- map["articles"]
        total <- map["total"]
    }
}
