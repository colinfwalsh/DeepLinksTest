//
//  ViewController.swift
//  DeepLinksTest
//
//  Created by Colin Walsh on 7/20/18.
//  Copyright © 2018 Colin Walsh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var slideMenu: UITableView!
    @IBOutlet weak var slideMenuTrailing: NSLayoutConstraint!
    @IBOutlet weak var backgroundFilter: UIView!
    
    let smDataSource = SlideMenuDataSource()
    
    var slideMenuWidth: CGFloat {
        get {
            return self.slideMenu.frame.width
        }
    }
    
    var smTrailConstant: CGFloat {
        get {
            return self.slideMenuTrailing.constant
        } set {
            self.slideMenuTrailing.constant = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        smTrailConstant = -slideMenuWidth
        backgroundFilter.backgroundColor = .clear
        slideMenu.dataSource = smDataSource
        slideMenu.backgroundColor = .darkGray
    }

    @IBAction func expandMenu(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3, animations: {
            self.smTrailConstant = self.smTrailConstant == 0 ? -self.slideMenuWidth : 0
            self.backgroundFilter.backgroundColor = self.smTrailConstant == 0 ? UIColor.black.withAlphaComponent(0.2) : UIColor.clear
            self.view.layoutSubviews()
        })
    }
}

