//
//  Alerts.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class Alerts  : Mappable {
    
    var route_id : String?
    var route_name : String?
    var mode : String?
    var advisory : Bool?
    var detour : Bool?
    var alert : Bool?
    var suspended : Bool?
    var last_updated : String?
    var snow : Bool?
    var description : String?
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        
        route_id <- map["route_id"]
        route_name <- map["route_name"]
        mode <- map["mode"]
        advisory <- map["advisory"]
        detour <- map["detour"]
        alert <- map["alert"]
        suspended <- map["suspended"]
        last_updated <- map["last_updated"]
        snow <- map["snow"]
        description <- map["description"]
        
    }
    
}

