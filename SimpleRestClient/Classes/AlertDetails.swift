//
//  AlertDetails.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class AlertDetails : Mappable {
    
    var alert_id: String?
    var alert: AlertDetails_Alert?
    var last_updated: String?
    var snow: Bool?
    
    required public init?(map: Map) {
    }

    public func mapping(map: Map) {
        
        alert_id <- map["alert_id"]
        alert <- map["alert"]
        last_updated <- map["last_updated"]
        snow <- map["snow"]
        
    }

}
