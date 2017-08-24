//
//  APIArticle.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class APIArticle : Mappable {
    var title : String?
    var author : String?
    var date : NSDate?
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        title <- map["title"]
        author <- map["author"]
        date <- map["date"]
    }
}
