//
//  RealTimeArrival.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import ObjectMapper

public class RealTimeArrival : Mappable {
    
    var orig_line_route_id: String?
    var orig_line_route_name: String?
    var term_line_route_id: String?
    var term_line_route_name: String?
    var connection_station_id: String?
    var connection_station_name: String?
    var orig_line_trip_id: String?
    var term_line_trip_id: String?
    var sched_departure_time: String?
    var sched_arrival_time: String?
    var orig_delay_minutes: String?
    var term_delay_minutes: String?
    var orig_tiploc_name: String?
    var term_tiploc_name: String?
    var orig_last_stop_id: String?
    var orig_last_stop_name: String?
    var term_last_stop_id: String?
    var term_last_stop_name: String?
    var orig_line_direction: String?
    var term_line_direction: String?
    var latitude: String?
    var longitude: String?

    
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        
        orig_line_route_id <- map["orig_line_route_id"]
        orig_line_route_name <- map["orig_line_route_name"]
        term_line_route_id <- map["term_line_route_id"]
        term_line_route_name <- map["term_line_route_name"]
        connection_station_id <- map["connection_station_id"]
        connection_station_name <- map["connection_station_name"]
        orig_line_trip_id <- map["orig_line_trip_id"]
        term_line_trip_id <- map["term_line_trip_id"]
        sched_departure_time <- map["sched_departure_time"]
        sched_arrival_time <- map["sched_arrival_time"]
        orig_delay_minutes <- map["orig_delay_minutes"]
        term_delay_minutes <- map["term_delay_minutes"]
        orig_tiploc_name <- map["orig_tiploc_name"]
        term_tiploc_name <- map["term_tiploc_name"]
        orig_last_stop_id <- map["orig_last_stop_id"]
        orig_last_stop_name <- map["orig_last_stop_name"]
        term_last_stop_id <- map["term_last_stop_id"]
        term_last_stop_name <- map["term_last_stop_name"]
        orig_line_direction <- map["orig_line_direction"]
        term_line_direction <- map["term_line_direction"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        
    }
}
