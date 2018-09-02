//
//  ToDoItem.swift
//  ToDo
//
//  Created by Jason Franklin on 02.09.18.
//  Copyright © 2018 Jason Franklin. All rights reserved.
//

import Foundation

struct ToDoItem {
    let title: String
    let description: String?
    let timestamp: Double?
    let location: Location?
    
    init(title: String,
         description: String? = nil,
         timestamp: Double? = nil,
         location: Location? = nil) {
        self.title = title
        self.description = description
        self.timestamp = timestamp
        self.location = location
    }
}
