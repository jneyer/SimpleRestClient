//
//  TransitRoutes.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class TransitRoutes : Mappable {

    var results: Int?
    var route: Int?
    var buses: [TransitRoute]?
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        
        results <- map["results"]
        route <- map["route"]
        buses <- map["buses"]
        
    }

}
