//
//  TrainRoutes.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class TrainRoutes : Mappable {
    
    var results: Int?
    var route: Int?
    var trains: [TrainRoute]?
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        
        results <- map["results"]
        route <- map["route"]
        trains <- map["trains"]
        
    }
}
