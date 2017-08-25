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
    
    var alert: AlertDetails_Alert?
    
    public override func mapping(map: Map) {
        
        super.mapping(map: map)
        
        if (map["alert"].isKeyPresent) {
            success = true;
        }
        alert <- map["alert"]
        
    }

}
