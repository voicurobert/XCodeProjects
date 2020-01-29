//
//  ViewController.swift
//  Eight
//
//  Created by Robert Voicu on 12/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import UIKit
import Firebase

class LaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func continueAsFirmButtonPressed(_ sender: UIButton) {
        print( "Continue as Firm button pressed" )
    }
    
    @IBAction func continueAsCustomerButtonPressed(_ sender: Any) {
        print( "Continue as Customer button pressed" )
    }
}

