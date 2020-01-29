//
//  ViewController.swift
//  DriveMe
//
//  Created by Eduard Robert Voicu on 12/05/16.
//  Copyright © 2016 robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bluetoothConnectedState: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print( "Main View Controller" )
        // Do any additional setup after loading the view, typically from a nib.
		bluetoothConnectedState.setOn( false , animated: true )
        
    }


}

