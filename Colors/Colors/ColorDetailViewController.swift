//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Robert Graman on 10/19/18.
//  Copyright © 2018 Robert Graman. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var color:Color?
    @IBOutlet weak var ColorNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ColorNameLabel.text = color?.name
        self.view.backgroundColor = color?.UIColor
        self.title = color?.name
        // Do any additional setup after loading the view.
    }
    

    

}
