//
//  ApiResponse.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper


public class RestResponse<T : Mappable>: Mappable {
    var success: Bool = false
    var response: T?
    var alerts: [T]?
    var error : APIError?
    var results: Int?
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        success <- map["success"]
        response <- map["response"]
        alerts <- map["alerts"]
        error <- map["error"]
        results <- map["results"]
    }
}
