//
//  Employee.swift
//  Eight
//
//  Created by Robert Voicu on 20/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import Foundation
import Firebase

class Employee: Hashable, Equatable{
    
    public static let ID: String = "id"
    public static let NAME: String = "ID"
    public static let FIRM_OWNER_ID: String = "firmOwnerId"
    public static let SCHEDULE_ID: String = "scheduleId"
    public static let CATEGORY_IDS: String = "categoryIds"
    
    private var id: String!
    private var name: String!
    private var firmOwnerId: String!
    private var scheduleId: String!
    private var categoryIds: String!
    
    var hashValue: Int{
        return id.hashValue
    }
    
    func hash( into hasher: inout Hasher ){
        return hasher.combine( id )
    }
    
    static func ==( aEmployee: Employee, anotherEmployee: Employee ) -> Bool{
        return aEmployee.id == anotherEmployee.id
    }
    
    init( _ snapshot: DataSnapshot ){
        let snapshotValue = snapshot.value as! [ String: AnyObject ]
        
        if let id = snapshotValue[ Employee.ID ] as? String{
            self.id = id
        }
        
        if let name = snapshotValue[ Employee.NAME ] as? String{
            self.name = name
        }
        
        if let firmOwnerId = snapshotValue[ Employee.FIRM_OWNER_ID ] as? String{
            self.firmOwnerId = firmOwnerId
        }
        
        if let scheduleId = snapshotValue[ Employee.SCHEDULE_ID ] as? String{
            self.scheduleId = scheduleId
        }
        
        if let categoryIds = snapshotValue[ Employee.CATEGORY_IDS ] as? String{
            self.categoryIds = categoryIds
        }
    }
    
    func toAnyObject() -> Any{
        return [
            Employee.ID: self.id,
            Employee.NAME: self.name,
            Employee.FIRM_OWNER_ID: self.firmOwnerId,
            Employee.SCHEDULE_ID: self.scheduleId,
            Employee.CATEGORY_IDS: self.categoryIds
        ]
    }
    
}
