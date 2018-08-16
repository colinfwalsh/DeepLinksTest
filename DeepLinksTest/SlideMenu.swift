//
//  SlideMenu.swift
//  DeepLinksTest
//
//  Created by Colin Walsh on 8/1/18.
//  Copyright © 2018 Colin Walsh. All rights reserved.
//

import UIKit

class SlideMenu: UITableViewController {
    
    let smDataSource = SlideMenuDataSource()

    override func viewDidLoad() {
        self.tableView.dataSource = smDataSource
    }
 
}
