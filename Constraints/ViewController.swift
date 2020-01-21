//
//  ViewController.swift
//  Constraints
//
//  Created by Aaron Cleveland on 1/19/20.
//  Copyright © 2020 Aaron Cleveland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpSubViews()
    }
    
    func setUpSubViews() {
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        // Disables the auto resizing mask, and prevents the view from creating
        // it's own constraints.
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
        
        // item is the item that you are constraining
        // attribute is the attribute you want to constrain about the item
        // relatedby to something else
        // toItem = item you are constraining to another view
        // attribute#2 is another attribute you want to constrain too
        // multiplier is multiple
        // constant is the number of pixels you want.
        
//        let blueLeadingConstraint = NSLayoutConstraint(item: blueView,
//                                                       attribute: .leading,
//                                                       relatedBy: .equal,
//                                                       toItem: view.safeAreaLayoutGuide,
//                                                       attribute: .leading,
//                                                       multiplier: 1,
//                                                       constant: 20)
        
        let blueLeadingConstraint = blueView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        
//        let blueCenterYConstraint = NSLayoutConstraint(item: blueView,
//                                                      attribute: .centerY,
//                                                      relatedBy: .equal,
//                                                      toItem: view.safeAreaLayoutGuide,
//                                                      attribute: .centerY,
//                                                      multiplier: 1,
//                                                      constant: 0)
        let blueCenterYConstraint = blueView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 0)
        
//        let blueHeightConstraint = NSLayoutConstraint(item: blueView,
//                                                      attribute: .height,
//                                                      relatedBy: .equal,
//                                                      toItem: nil,
//                                                      attribute: .notAnAttribute,
//                                                      multiplier: 1,
//                                                      constant: 100)
        let blueHeightConstraint = blueView.heightAnchor.constraint(equalToConstant: 100)
        
//        let blueWidthConstraint = NSLayoutConstraint(item: blueView,
//                                                     attribute: .width,
//                                                     relatedBy: .equal,
//                                                     toItem: blueView,
//                                                     attribute: .height,
//                                                     multiplier: 2,
//                                                     constant: 0)
        let blueWidthConstraint = blueView.widthAnchor.constraint(equalTo: blueView.heightAnchor, multiplier: 2)
        
        NSLayoutConstraint.activate([blueLeadingConstraint, blueCenterYConstraint, blueHeightConstraint, blueWidthConstraint])
        
    }


}

