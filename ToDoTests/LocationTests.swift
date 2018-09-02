//
//  LocationTests.swift
//  ToDoTests
//
//  Created by Jason Franklin on 02.09.18.
//  Copyright © 2018 Jason Franklin. All rights reserved.
//

import XCTest
import CoreLocation
@testable import ToDo

class LocationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitWithNameAndCoordinates() {
        let coordinates = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let location = Location(name: "This is a location name", coordinates: coordinates)
        XCTAssertEqual(location.name, "This is a location name")
        XCTAssertEqual(location.coordinates?.latitude, coordinates.latitude)
        XCTAssertEqual(location.coordinates?.longitude, coordinates.longitude)
    }
    
}
