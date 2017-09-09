//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Santiago on 9/7/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var lat: Double!
    var lon: Double!
}
