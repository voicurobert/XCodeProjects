//
//  DrivingButtonsViewController.swift
//  DriveMe
//
//  Created by Eduard Robert Voicu on 19/05/16.
//  Copyright © 2016 robert. All rights reserved.
//

import UIKit

class DrivingButtonsViewController: UIViewController {

    @IBOutlet weak var driveForwardButton: UIButton!
    
    @IBOutlet weak var driveBackwardsButton: UIButton!
    
    @IBOutlet weak var driveRightButton: UIButton!
    
    @IBOutlet weak var driveLeftButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print( "Driving Buttons View Controller" )
        // Do any additional setup after loading the view.
    }
    

}
