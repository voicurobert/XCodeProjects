//
//  DrivingSlidierViewController.swift
//  DriveMe
//
//  Created by Eduard Robert Voicu on 20/05/16.
//  Copyright © 2016 robert. All rights reserved.
//

import UIKit

class DrivingSlidierViewController: UIViewController {

	@IBOutlet weak var forwardBackwardsSlider: UISlider!
	@IBOutlet weak var leftRightSlider: UISlider!
	
    override func viewDidLoad(){
        super.viewDidLoad()
		print( "Driving slider view controller" )
		self.rotateSliderVertical()
		
    }
	
	func rotateSliderVertical(){
		var sliderRotation: CGAffineTransform = CGAffineTransform.identity
		sliderRotation = sliderRotation.rotated(by: CGFloat( -( M_PI / 2 ) ) )
		self.forwardBackwardsSlider.transform = sliderRotation
	}

	
	@IBAction func forwardBackwardsValueChanged(_ sender: UISlider) {
		print( sender.value )
	}
 

}
