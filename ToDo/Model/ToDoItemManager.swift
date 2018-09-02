//
//  ToDoItemManager.swift
//  ToDo
//
//  Created by Jason Franklin on 02.09.18.
//  Copyright © 2018 Jason Franklin. All rights reserved.
//

import Foundation
@testable import ToDo

final class ToDoItemManager {
    var toDoCount: Int { return toDoItems.count }
    var doneCount: Int { return doneItems.count }
    
    private var toDoItems = [ToDoItem]()
    private var doneItems = [ToDoItem]()
    
    func add(item: ToDoItem) {
        toDoItems.append(item)
    }
    
    func item(at index: Int) -> ToDoItem? {
        return toDoItems[index]
    }
    
    func checkItem(at index: Int) {
        doneItems.append(toDoItems.remove(at: index))
    }
}
