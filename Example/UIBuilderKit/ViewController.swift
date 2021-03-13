//
//  ViewController.swift
//  UIBuilderKit
//
//  Created by jsryudev on 03/13/2021.
//  Copyright (c) 2021 jsryudev. All rights reserved.
//

import UIKit

import UIBuilderKit

class ViewController: UIViewController {

  let textLabel = UILabel.Builder()
    .text("Hello, World!")
    .textAlignment(.center)
    .textColor(.black)
    .font(.italic)
    .build()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

