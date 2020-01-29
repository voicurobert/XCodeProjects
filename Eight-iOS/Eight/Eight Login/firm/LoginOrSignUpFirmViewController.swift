//
//  LoginOrSignInFirm.swift
//  Eight
//
//  Created by Robert Voicu on 13/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import UIKit
import Firebase

class LoginOrSignUpFirmViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Auth.auth().signInAnonymously { ( auth, error ) in
            FirebaseManager.instance
                .firmWithEmailExists( email: "firm@gmail.com", firebaseResponse: { exists, snapshot in
                    if exists{
                        let firmOwner: FirmOwner = FirmOwner( snapshot! )
                        firmOwner.description()
                    }
                })
        }
    }
    
}
