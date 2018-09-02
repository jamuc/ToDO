//
//  ToDoItemManagerTests.swift
//  ToDoTests
//
//  Created by Jason Franklin on 02.09.18.
//  Copyright © 2018 Jason Franklin. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoItemManagerTests: XCTestCase {
    
    var itemManager: ToDoItemManager!
    
    override func setUp() {
        super.setUp()
        itemManager =  ToDoItemManager()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitToDoCountIsInitiallyZero() {
        XCTAssertEqual(itemManager.toDoCount, 0)
    }
    
    func testInitDoneCountIsInitallyZero() {
        XCTAssertEqual(itemManager.doneCount, 0)
    }
    
    func testAddItemIncreasesToDoItemCountByOne() {
        itemManager.add(item: ToDoItem(title: ""))
        XCTAssertEqual(itemManager.toDoCount, 1)
        XCTAssertEqual(itemManager.doneCount, 0 )
    }
    
    func testItemAtReturnsRequestedItem() {
        itemManager.add(item: ToDoItem(title: ""))
        
        let returnedItem = itemManager.item(at: 0)
        XCTAssertEqual(returnedItem?.title, "")
    }
    
    func testCheckItemAtDecreasesToDoCountAndIncreasesDoneCount() {
        itemManager.add(item: ToDoItem(title: ""))
        
        itemManager.checkItem(at: 0)
        
        XCTAssertEqual(itemManager.toDoCount, 0)
        XCTAssertEqual(itemManager.doneCount, 1)
    }
}
