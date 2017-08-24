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
    
    var alert: AlertDetails_Alert?
    
    required public init?(map: Map) {
    }

    public func mapping(map: Map) {
        
        alert <- map["alert"]
        
    }

}
