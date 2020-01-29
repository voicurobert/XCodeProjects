//
//  DrivingAccelerometerViewController.swift
//  DriveMe
//
//  Created by Eduard Robert Voicu on 19/05/16.
//  Copyright © 2016 robert. All rights reserved.
//

import UIKit
import CoreMotion

class DrivingAccelerometerViewController: UIViewController {

	var motionManager: CMMotionManager!
    @IBOutlet weak var accelerometerValueXLabel: UILabel!
    @IBOutlet weak var accelerometerValueYLabel: UILabel!
    @IBOutlet weak var accelerometerValueZLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print( "Driving Accelerometer View Controller" )
        // Do any additional setup after loading the view.
        
        self.motionManager = CMMotionManager()
		
		self.motionManager.startAccelerometerUpdates()
		if self.motionManager.isAccelerometerAvailable{
			self.motionManager.accelerometerUpdateInterval = 1
			self.motionManager.startAccelerometerUpdates(to: OperationQueue.current!, withHandler:{
				data, error in
				let x: Double = (data?.acceleration.x)! * 100
				print( x )
				//print( ( data?.acceleration.x * 100 )! )
			})
		}
		
		print( self.motionManager.isAccelerometerAvailable )
        //let defaultXLabelText = "X: "
        //let defaultYLabelText = "Y: "
        //let defaultZLabelText = "Z: "
        accelerometerValueXLabel.text = accelerometerValueXLabel.text! + " HA"
    }
	

	
	override func viewWillDisappear(_ animated: Bool) {
		self.motionManager.stopAccelerometerUpdates()
	}
	
	fileprivate func accelerometerXData() -> Int8{
		return Int8( ( self.motionManager.accelerometerData?.acceleration.x )! )
	}
	
	fileprivate func accelerometerYData() -> Int8{
		return Int8( ( self.motionManager.accelerometerData?.acceleration.y )! )
	}
	
	fileprivate func accelerometerZData() -> Int8{
		return Int8( ( self.motionManager.accelerometerData?.acceleration.z )! )
	}

}
