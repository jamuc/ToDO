//
//  ItemListDataProvider.swift
//  ToDo
//
//  Created by Jason Franklin on 03.09.18.
//  Copyright © 2018 Jason Franklin. All rights reserved.
//

import Foundation
import UIKit

class ItemListDataProvider: NSObject, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
