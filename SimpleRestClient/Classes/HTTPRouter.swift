//
//  HTTPRouter.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation

public enum HTTPRouter {
    private static let baseURLString = "https://vnjb5kvq2b.execute-api.us-east-1.amazonaws.com/prod/"
    
    case Alerts
    case AlertDetails
    case Arrivals
    case RealTimeArrivals
    case TransitRoutes
    case TrainRoutes
    
    case CheckSessionStatus
    
    public var URLString : String {
        let path : String = {
            switch self {
            case .Alerts:
                return "alerts"
            case .AlertDetails:
                return "alert-details"
            case .Arrivals:
                return "arrivals"
            case .RealTimeArrivals:
                return "realtimearrivals"
            case .TransitRoutes:
                return "transitroutes"
            case .TrainRoutes:
                return "trainroutes"
            default:
                return ""
            }
        }()
        return HTTPRouter.baseURLString + path;
    }
}
