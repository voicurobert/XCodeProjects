//
//  FirebaseObjectRetrieved.swift
//  Eight
//
//  Created by Robert Voicu on 13/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import Foundation

protocol FirebaseObjectRetrieved{
    
    init()
    
    func objectRetrieved( firebaseObject: AnyObject! )
}
