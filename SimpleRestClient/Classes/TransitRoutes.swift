//
//  TransitRoutes.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class TransitRoutes : RestResponse {

    var results: Int?
    var route: Int?
    var transit: [TransitRoute]?
    
    public override func mapping(map: Map) {
        
        super.mapping(map: map)
        
        if (map["buses"].isKeyPresent) {
            success = true;
        }
        results <- map["results"]
        route <- map["route"]
        transit <- map["transit"]
        
    }

}
