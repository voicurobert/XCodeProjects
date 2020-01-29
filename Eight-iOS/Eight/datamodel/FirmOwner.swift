//
//  FirmOwner.swift
//  Eight
//
//  Created by Robert Voicu on 19/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import Foundation
import Firebase


class FirmOwner: Hashable, Equatable{
    
    public static let ID: String = "id"
    public static let NAME: String = "name"
    public static let PASSWORD: String = "password"
    public static let EMAIL: String = "email"
    public static let ADDRESS: String = "address"
    public static let PHONE_NUMBER: String = "phoneNumber"
    public static let FIREBASE_TOKEN: String = "firebaseToken"
    public static let LATITUDE: String = "latitude"
    public static let LONTITUDE: String = "longitude"
    public static let ACTIVE: String = "active"
    public static let SCHEDULE_ID: String = "scheduleId"
    
    private var id: String!
    private var name: String!
    private var password: String!
    private var email: String!
    private var address: String!
    private var phoneNumber: String!
    private var firebaseToken: String!
    private var latitude: Double!
    private var longitude: Double!
    private var active: Int!
    private var scheduleId: String!
    
    var hashValue: Int{
        return id.hashValue
    }
    
    func hash( into hasher: inout Hasher ){
        return hasher.combine( id )
    }
    
    static func ==( aFirmOwner: FirmOwner, anotherFirmOwner: FirmOwner ) -> Bool{
        return aFirmOwner.id == anotherFirmOwner.id
    }
    
    var getName: String{
        return self.name
    }
    
    init( _ snapshot: DataSnapshot ){
        let snapshotValue = snapshot.value as! [String: AnyObject]
        
        if let id = snapshotValue[ FirmOwner.ID ] as? String{
            self.id = id
        }
        
        if let name = snapshotValue[ FirmOwner.NAME] as? String{
            self.name = name
        }
        
        if let password = snapshotValue[ FirmOwner.PASSWORD ] as? String{
            self.password = password
        }
        
        if let email = snapshotValue[ FirmOwner.EMAIL ] as? String{
            self.email = email
        }
        
        if let address = snapshotValue[ FirmOwner.ADDRESS ] as? String{
            self.address = address
        }
        
        if let phoneNumber = snapshotValue[ FirmOwner.PHONE_NUMBER ] as? String{
            self.phoneNumber = phoneNumber
        }
        
        if let firebaseToken = snapshotValue[ FirmOwner.FIREBASE_TOKEN ] as? String{
            self.firebaseToken = firebaseToken
        }
        
        if let latitude = snapshotValue[ FirmOwner.LATITUDE ] as? Double{
            self.latitude = latitude
        }
        
        if let longitude = snapshotValue[ FirmOwner.LONTITUDE ] as? Double{
            self.longitude = longitude
        }
        
        if let active = snapshotValue[ FirmOwner.ACTIVE ] as? Int{
            self.active = active
        }
        
        if let scheduleId = snapshotValue[ FirmOwner.SCHEDULE_ID ] as? String{
            self.scheduleId = scheduleId
        }
    }
    
    func toAnyObject() -> Any{
        return [
            FirmOwner.ID: self.id!,
            FirmOwner.ACTIVE: self.active!,
            FirmOwner.ADDRESS: self.address!,
            FirmOwner.EMAIL: self.email!,
            FirmOwner.FIREBASE_TOKEN: self.firebaseToken!,
            FirmOwner.LATITUDE: self.latitude!,
            FirmOwner.LONTITUDE: self.longitude!,
            FirmOwner.NAME: self.name!,
            FirmOwner.PASSWORD: self.password!,
            FirmOwner.PHONE_NUMBER: self.phoneNumber!,
            FirmOwner.SCHEDULE_ID: self.scheduleId!
        ]
    }
    
    func description(){
        print( "\(name!)" )
    }
 
}

