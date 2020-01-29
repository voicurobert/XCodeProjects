//
//  Category.swift
//  Eight
//
//  Created by Robert Voicu on 20/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import Foundation
import Firebase

class Category: Hashable, Equatable{
    
    public static let ID = "id"
    public static let NAME = "name"
    public static let FIRM_OWNER_ID = "firmOwnerId"
    
    private var id: String!
    private var name: String!
    private var firmOwnerId: String!
    
    var hashValue: Int{
        return id.hashValue
    }
    
    func hash( into hasher: inout Hasher ){
        return hasher.combine( id )
    }
    
    static func ==( aCategory: Category, anotherCategory: Category ) -> Bool{
        return aCategory.id == anotherCategory.id
    }
    
    init( _ snapshot: DataSnapshot ){
        let snapshotValue = snapshot.value as! [String: AnyObject]
        
        if let id =  snapshotValue[ Category.ID ] as? String{
            self.id = id
        }
        
        if let name =  snapshotValue[ Category.NAME ] as? String{
            self.name = name
        }
        
        if let firmOwnerId =  snapshotValue[ Category.FIRM_OWNER_ID ] as? String{
            self.firmOwnerId = firmOwnerId
        }
    }
    
    func toAnyObject() -> Any{
        return [
            Category.ID: self.id!,
            Category.NAME: self.name!,
            Category.FIRM_OWNER_ID: self.firmOwnerId!
        ]
    }
}
