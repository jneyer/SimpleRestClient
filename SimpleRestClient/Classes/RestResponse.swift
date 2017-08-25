//
//  ApiResponse.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper


public class RestResponse: Mappable {
    
    var success: Bool = false
    var error : Error?
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        if (map["message"] != nil) {
            error <- map
        }
        
    }
}
