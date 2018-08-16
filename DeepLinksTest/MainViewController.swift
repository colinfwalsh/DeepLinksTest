//
//  ViewController.swift
//  DeepLinksTest
//
//  Created by Colin Walsh on 7/20/18.
//  Copyright © 2018 Colin Walsh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

//    @IBOutlet weak var backgroundFilter: UIView!
    
    var slideMenu: SlideMenu!

    var slideMenuWidth: CGFloat {
        get {
            return self.slideMenu.view.frame.width
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        slideMenu = storyboard.instantiateViewController(withIdentifier: "slideMenu") as! SlideMenu
        let widthConstraint
             = NSLayoutConstraint(item: slideMenu.view, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0.65, constant: self.view.frame.width)
        slideMenu.view.addConstraint(widthConstraint)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        /*
        var newSafeArea = UIEdgeInsets()
        
        guard let child = self.childViewControllers[0] as? SlideMenu else {
            fatalError("Not the right view controller!")
        }
        if let topViewHeight = self.navigationController?.navigationBar.frame.size.height {
            newSafeArea.top -= topViewHeight*2
        }
        
        child.additionalSafeAreaInsets = newSafeArea
        */
    }

    @IBAction func expandMenu(_ sender: Any) {
        self.present(slideMenu, animated: true, completion: {})
        UIView.animate(withDuration: 0.3, animations: {
        //    self.smLeadConstant = self.smLeadConstant == 0 ? -self.slideMenuWidth : 0
          //  self.backgroundFilter.backgroundColor = self.smLeadConstant == 0 ? UIColor.black.withAlphaComponent(0.2) : UIColor.clear
            self.view.layoutSubviews()
        })
    }
}

