//
//  AlertDetails_Alert.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper


public class AlertDetails_Alert : Mappable {

    var route_id: String?
    var route_name: String?
    var message: String?
    var advisory_message: String?
    var detour: Detour?
    var last_updated: String?
    var snow: Bool?
    
    required public init?(map: Map) {
    }

    public func mapping(map: Map) {
        
        route_id <- map["route_id"]
        route_name <- map["route_name"]
        message <- map["message"]
        advisory_message <- map["advisory_message"]
        detour <- map["detour"]
        last_updated <- map["last_updated"]
        snow <- map["snow"]
        
    }
    
    
}

