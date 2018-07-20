//
//  SlideMenuTableViewCell.swift
//  DeepLinksTest
//
//  Created by Colin Walsh on 7/20/18.
//  Copyright © 2018 Colin Walsh. All rights reserved.
//

import UIKit

class SlideMenuTableViewCell: UITableViewCell {
    static let reuseIdentifier: String = "slideItem"
    
    @IBOutlet weak var contentTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.backgroundColor = .darkGray
        self.contentTitle.textColor = .white
    }
}
