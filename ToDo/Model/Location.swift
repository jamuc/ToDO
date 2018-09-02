//
//  Location.swift
//  ToDo
//
//  Created by Jason Franklin on 02.09.18.
//  Copyright © 2018 Jason Franklin. All rights reserved.
//

import Foundation
import CoreLocation

struct Location: Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.name == rhs.name && lhs.coordinates == rhs.coordinates
    }
    
    let name: String
    let coordinates: CLLocationCoordinate2D?
    
    init(name: String, coordinates: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinates = coordinates
    }
}

extension CLLocationCoordinate2D: Equatable {
    public static func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}
