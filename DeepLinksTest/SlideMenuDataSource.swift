//
//  SlideMenuDataSource.swift
//  DeepLinksTest
//
//  Created by Colin Walsh on 7/20/18.
//  Copyright © 2018 Colin Walsh. All rights reserved.
//

import Foundation
import UIKit

class SlideMenuDataSource: NSObject, UITableViewDataSource {
    
    let tempContent: [String] = ["Food", "SoC", "Cinema", "ePearson", "Sakai", "Student Affairs", "Bus"]
    let tempFavorites: [String] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? tempContent.count : tempFavorites.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Categories"
        default:
            return "Favorites"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SlideMenuTableViewCell.reuseIdentifier, for: indexPath) as? SlideMenuTableViewCell else {fatalError("Error: Problem loading cell in SlideMenuDataSource, check inputs")}
        
        switch indexPath.section {
        case 0:
            cell.contentTitle.text = tempContent[indexPath.row]
        case 1:
            cell.contentTitle.text = tempFavorites[indexPath.row]
        default:
            fatalError("Error: Section out of bounds")
        }
        
        return cell
    }
}
