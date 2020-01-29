//
//  Datamodel.swift
//  Eight
//
//  Created by Robert Voicu on 20/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import Foundation

class Datamodel{
    
    public static let instance: Datamodel = Datamodel()
    
    
    private var firm: FirmOwner!
    private var customer: Customer!
    private var activeFirms: Set< FirmOwner >!
    private var categories: Set< Category >!
    private var employees: Set< Employee >!
    private var products: Set< Employee >!
    
    private init(){
        
    }
    
    
    
}
