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
    
    func testComparingSameLocations() {
        let locationName = "This is the location name"
        let coordinates = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        
        // Same name, same coordinates
        let location1 = Location(name: locationName, coordinates: coordinates)
        let location2 = Location(name: locationName, coordinates: coordinates)
        
        XCTAssertEqual(location1, location2)
    }
    
    func testComparingLocationsDifferentNames() {
        let locationName1 = "This is the location name"
        let locationName2 = ""
        let coordinates = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        
        let location1 = Location(name: locationName1, coordinates: coordinates)
        let location2 = Location(name: locationName2, coordinates: coordinates)
        
        XCTAssertNotEqual(location1, location2)
    }
    
    func testComparingLocationsDifferentCoordinates() {
        let locationName = "This is the name"
        let coordinates1 = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let coordinates2 = CLLocationCoordinate2D(latitude: 0, longitude: 10)
        
        let location1 = Location(name: locationName, coordinates: coordinates1)
        let location2 = Location(name: locationName, coordinates: coordinates2)
        
        XCTAssertNotEqual(location1, location2)
    }
}
