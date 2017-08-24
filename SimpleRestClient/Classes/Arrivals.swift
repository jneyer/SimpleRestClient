//
//  Arrivals.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class Arrivals : Mappable {
    
    var origin : String?
    var destination : String?
    var results : Int?
    var arrivals : [Arrival]?
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        origin <- map["origin"]
        destination <- map["destination"]
        results <- map["results"]
        arrivals <- map["arrivals"]
    }
}
