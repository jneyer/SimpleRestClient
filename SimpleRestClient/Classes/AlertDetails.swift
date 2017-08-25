//
//  AlertDetails.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class AlertDetails : RestResponse {
    
    var route: String?
    var alerts: [AlertDetails_Alert]?
    var results: Int?
    
    public override func mapping(map: Map) {
        
        super.mapping(map: map)
        
        if (map["alert"].isKeyPresent) {
            success = true;
        }
        
        route <- map["route"]
        alerts <- map["alert"]
        results <- map["results"]
    }

}
