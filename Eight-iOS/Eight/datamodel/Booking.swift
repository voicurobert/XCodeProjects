//
//  Booking.swift
//  Eight
//
//  Created by Robert Voicu on 20/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import Foundation
import Firebase

class Booking{
    
    public static let ID: String = "id"
    public static let CUSTOMER_ID: String = "customerId"
    public static let CUSTOMER_NAME: String = "customerName"
    public static let DATE: String = "date"
    public static let EMPLOYEE_ID: String = "employeeId"
    public static let FIRM_OWNER_ID: String = "firmOwnerId"
    public static let PRODUCT_ID: String = "productId"
    public static let STATUS: String = "status"
    
    private var id: String!
    private var customerId: String!
    private var customerName: String!
    private var date: String!
    private var employeeId: String!
    private var firmOwnerId: String!
    private var productId: String!
    private var status: Int!
    
    init( _ snapshot: DataSnapshot ){
        var snapshotValue = snapshot.value as! [String: AnyObject]
        
        if let id = snapshotValue[ Booking.ID ] as? String{
            self.id = id
        }
        
        if let customerId = snapshotValue[ Booking.CUSTOMER_ID ] as? String{
            self.customerId = customerId
        }
        
        if let customerName = snapshotValue[ Booking.CUSTOMER_NAME ] as? String{
            self.customerName = customerName
        }
        
        if let date = snapshotValue[ Booking.DATE ] as? String{
            self.date = date
        }
        
        if let employeeId = snapshotValue[ Booking.EMPLOYEE_ID ] as? String{
            self.employeeId = employeeId
        }
        
        if let firmOwnerId = snapshotValue[ Booking.FIRM_OWNER_ID ] as? String{
            self.firmOwnerId = firmOwnerId
        }
        
        if let productId = snapshotValue[ Booking.PRODUCT_ID ] as? String{
            self.productId = productId
        }
        
        if let status = snapshotValue[ Booking.STATUS ] as? Int{
            self.status = status
        }
    }
    
    func toAnyObject() -> Any{
        return [
            Booking.ID: self.id!,
            Booking.CUSTOMER_ID: self.customerId!,
            Booking.CUSTOMER_NAME: self.customerName!,
            Booking.DATE: self.date!,
            Booking.EMPLOYEE_ID: self.employeeId!,
            Booking.FIRM_OWNER_ID: self.firmOwnerId!,
            Booking.PRODUCT_ID: self.productId!,
            Booking.STATUS: self.status!
        ]
    }
}
