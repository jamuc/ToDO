//
//  ToDoItemTests.swift
//  ToDoTests
//
//  Created by Jason Franklin on 02.09.18.
//  Copyright © 2018 Jason Franklin. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoItemTests: XCTestCase {
    
    private let itemTitle = "This is a title"
    private let itemDescription = "This is a description"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitWithTitle() {
        let item = ToDoItem(title: itemTitle)
        XCTAssertEqual(item.title, itemTitle)
    }
    
    func testInitWithTitleAndDescription() {
        let item = ToDoItem(title: itemTitle, description: itemDescription)
        XCTAssertEqual(item.title, itemTitle)
        XCTAssertEqual(item.description, itemDescription)
    }
    
    func testInitWithTitleAndTimeStamp() {
        let timestamp = 0.0
        let item = ToDoItem(title: itemTitle, timestamp: timestamp)
        XCTAssertEqual(item.timestamp, timestamp)
    }
    
    func testInitWithLocation() {
        let location = Location(name: "This is the name of a location")
        let item = ToDoItem(title: itemTitle, location: location)
        XCTAssertEqual(item.location?.name, location.name)
    }
}
