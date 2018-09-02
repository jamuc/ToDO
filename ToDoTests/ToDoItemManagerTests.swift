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
    var item: ToDoItem!
    
    override func setUp() {
        super.setUp()
        itemManager =  ToDoItemManager()
        item = ToDoItem(title: "This is a new todo item")
    }
    
    override func tearDown() {
        itemManager = nil
        item = nil
        super.tearDown()
    }
    
    func testInitToDoCountIsInitiallyZero() {
        XCTAssertEqual(itemManager.toDoCount, 0)
    }
    
    func testInitDoneCountIsInitallyZero() {
        XCTAssertEqual(itemManager.doneCount, 0)
    }
    
    func testAddItemIncreasesToDoItemCountByOne() {
        itemManager.add(item: item)
        XCTAssertEqual(itemManager.toDoCount, 1)
        XCTAssertEqual(itemManager.doneCount, 0 )
    }
    
    func testItemAtReturnsRequestedItem() {
        itemManager.add(item: item)
        
        let returnedItem = itemManager.item(at: 0)
        XCTAssertEqual(item, returnedItem)
    }
    
    func testCheckItemAtDecreasesToDoCountAndIncreasesDoneCount() {
        itemManager.add(item: item)
        itemManager.checkItem(at: 0)
        
        XCTAssertEqual(itemManager.toDoCount, 0)
        XCTAssertEqual(itemManager.doneCount, 1)
    }
}
