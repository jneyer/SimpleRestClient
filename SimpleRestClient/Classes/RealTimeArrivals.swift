//
//  RealTimeArrivals.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class RealTimeArrivals : RestResponse {
    
    var origin: String?
    var destination: String?
    var type: String?
    var route: String?
    var results: Int?
    var arrivals: [RealTimeArrival]?
    
    public override func mapping(map: Map) {
        
        super.mapping(map: map)
        
        if (map["arrivals"].isKeyPresent) {
            success = true;
        }
        origin <- map["origin"]
        destination <- map["destination"]
        type <- map["type"]
        route <- map["route"]
        results <- map["results"]
        arrivals <- map["arrivals"]

    }
}
