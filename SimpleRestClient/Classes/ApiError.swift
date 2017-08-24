//
//  ApiError.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class APIError : Mappable
{
    var errorName : String?
    var errorCode : String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map : Map){
        errorName <- map["errorMessage"]
        errorCode <- map["errorCode"]
    }
}

