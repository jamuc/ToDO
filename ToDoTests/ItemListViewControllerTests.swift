//
//  ItemListViewControllerTests.swift
//  ToDoTests
//
//  Created by Jason Franklin on 02.09.18.
//  Copyright © 2018 Jason Franklin. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemListViewControllerTests: XCTestCase {
    
    var itemListViewController: ItemListViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        itemListViewController = storyboard.instantiateInitialViewController() as? ItemListViewController
        itemListViewController.loadViewIfNeeded()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTableViewAfterViewDidLoad() {
        XCTAssertNotNil(itemListViewController?.tableView)
    }
    
    func testTableViewSetsDataSource() {
        XCTAssertTrue(itemListViewController?.tableView.dataSource is ItemListDataProvider)
    }
    
    func testTableViewSetsTableViewDelegate() {
        XCTAssertTrue(itemListViewController?.tableView.delegate is ItemListDataProvider)
    }
    
    func testTableSourceDelegateEqualDataSourceProvider() {
        XCTAssertEqual(itemListViewController?.tableView.dataSource as? ItemListDataProvider, itemListViewController?.tableView.delegate as? ItemListDataProvider)
    }
}
