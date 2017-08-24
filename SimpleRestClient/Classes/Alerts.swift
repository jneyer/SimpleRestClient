//
//  Alerts.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class Alerts : Mappable {
    var alerts: [Alert]?
    var results: Int?
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        alerts <- map["alerts"]
        results <- map["results"]
    }
}
