//
//  SEPTAApiClient.swift
//  Pods
//
//  Created by John Neyer on 8/25/17.
//
//

import Foundation
import PromiseKit

public class SEPTAApiClient : NSObject {
    
    var httpClient : SimpleRestClient?;
    
    private init(url: String, apiKey: String?) {
        httpClient = SimpleRestClient.defaultClient(url: url, apiKey: apiKey)
    }
    
    public static func defaultClient(url: String, apiKey: String?) -> SEPTAApiClient {
        return SEPTAApiClient(url: url, apiKey: apiKey);
    }
    
    public func getAlerts (route: String?) -> Promise<Alerts?> {
        
        var param : [String: String]?  = nil
        if (route != nil) {
            param = ["route": route!]
        }
        
        return httpClient!.get(route: .Alerts, parameters: param! as [String : AnyObject])
        
    }
    
    public func getAlertDetails (routeName: String) -> Promise<AlertDetails?> {
        
        let param = ["route-name": routeName] as [String : AnyObject]
        
        return httpClient!.get(route: .AlertDetails, parameters: param )
        
    }
    
    public func getArrivals (origin: String, destination: String) -> Promise<Arrivals?> {
        
        let param = ["origin": origin, "destination" : destination] as [String : AnyObject]
        
        return httpClient!.get(route: .Arrivals, parameters: param)
    }
    
    public func getRealTimeArrivals (originId: String, destinationId: String, transitType: TransitType, route: String?) -> Promise<RealTimeArrivals?> {
        
        let param = ["origin": originId, "destination" : destinationId, "type": transitType.value, "route": route] as [String : AnyObject]
        
        return httpClient!.get(route: .RealTimeArrivals, parameters: param)
        
    }
    
    public func getTransit (route: String) -> Promise<TransitRoutes?> {
        
        return httpClient!.get(route: .Transit + route, parameters: nil)
        
    }
    
    
    public func getTrains (route: String) -> Promise<TrainRoutes?> {
        
        return httpClient!.get(route: .Trains, parameters: nil)
        
    }
    
    
}
