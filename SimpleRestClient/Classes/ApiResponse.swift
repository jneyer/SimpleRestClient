//
//  ApiResponse.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper


public class APIResponse<T : Mappable>: Mappable {
    var success: Bool = false
    var response: T?
    var error : APIError?
    
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        success <- map["success"]
        response <- map["response"]
        error <- map["error"]
    }
}
