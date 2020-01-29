//
//  Customer.swift
//  Eight
//
//  Created by Robert Voicu on 20/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import Foundation
import Firebase

class Customer{
    
    public static let ID: String = "id"
    public static let NAME: String = "name"
    public static let PASSWORD: String = "password"
    public static let EMAIL: String = "email"
    public static let FIREBASE_TOKEN: String = "firebaseToken"
    public static let PHONE_NUMBER: String = "phoneNumber"
    
    private var id: String!
    private var name: String!
    private var password: String!
    private var email: String!
    private var firebaseToken: String!
    private var phoneNumber: String!
    
    init( _ snapshot: DataSnapshot ){
        let snapshotValue = snapshot.value as! [String: AnyObject]
        
        if let id = snapshotValue[ Customer.ID ] as? String{
            self.id = id
        }
        
        if let name = snapshotValue[ Customer.NAME ] as? String{
            self.name = name
        }
        
        if let password = snapshotValue[ Customer.PASSWORD ] as? String{
            self.password = password
        }
        
        if let email = snapshotValue[ Customer.EMAIL ] as? String{
            self.email = email
        }
        
        if let phoneNumber = snapshotValue[ Customer.PHONE_NUMBER ] as? String{
            self.phoneNumber = phoneNumber
        }
        
        if let firebaseToken = snapshotValue[ Customer.FIREBASE_TOKEN ] as? String{
            self.firebaseToken = firebaseToken
        }
    }
    
    func toAnyObject() -> Any{
        return [
            Customer.ID: self.id,
            Customer.NAME: self.name,
            Customer.PASSWORD: self.password,
            Customer.EMAIL: self.email,
            Customer.FIREBASE_TOKEN: self.firebaseToken,
            Customer.PHONE_NUMBER: self.phoneNumber
        ]
    }
}
