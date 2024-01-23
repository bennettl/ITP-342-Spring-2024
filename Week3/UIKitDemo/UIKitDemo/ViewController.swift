//
//  ViewController.swift
//  UIKitDemo
//
//  Created by Bennett Lee on 1/22/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        label.text = "Hey ITP 342"

        // Add contraints to set it in the center of the screen
        let horizontalCenterConstraint = NSLayoutConstraint()
        let verticalCenterConstraint = NSLayoutConstraint()
        label.addConstraints([horizontalCenterConstraint, verticalCenterConstraint])

        label.sizeToFit()

        view.addSubview(label)
        view.translatesAutoresizingMaskIntoConstraints = true


        // Do any additional setup after loading the view.
    }


}

