//
//  HTTPRouter.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation

public enum HTTPRouter {
    private static let baseURLString = "http://example.com/mobileapi"
    
    case Articles
    
    case CheckSessionStatus
    
    public var URLString : String {
        let path : String = {
            switch self {
            case .Articles:
                return "feed/Articles"
            default:
                return ""
            }
        }()
        return HTTPRouter.baseURLString + path;
    }
}
