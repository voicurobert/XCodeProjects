//
//  Product.swift
//  Eight
//
//  Created by Robert Voicu on 20/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import Foundation
import Firebase


class Product{
    public static let ID: String = "id"
    public static let NAME: String = "name"
    public static let PRICE: String = "price"
    public static let FIRM_OWNER_ID: String = "firmOwnerId"
    public static let FIRM_CATEGORY_ID: String = "firmCategoryId"
    public static let DURATION: String = "duration"
    
    private var id: String!
    private var name: String!
    private var price: Double!
    private var duration: String!
    private var firmOwnerId: String!
    private var firmCategoryId: String!
    
    var hashValue: Int{
        return id.hashValue
    }
    
    static func ==( aProduct: Product, anotherProduct: Product ) -> Bool{
        return aProduct.id == anotherProduct.id
    }
    
    init( _ snapshot: DataSnapshot ){
        let snapshotValue = snapshot.value as! [ String: AnyObject ]
        
        if let id = snapshotValue[ Product.ID ] as? String{
            self.id = id
        }
        
        if let name = snapshotValue[ Product.NAME ] as? String{
            self.name = name
        }
        
        if let price = snapshotValue[ Product.PRICE ] as? Double{
            self.price = price
        }
        
        if let duration = snapshotValue[ Product.DURATION ] as? String{
            self.duration = duration
        }
        
        if let firmOwnerId = snapshotValue[ Product.FIRM_OWNER_ID ] as? String{
            self.firmOwnerId = firmOwnerId
        }
        
        if let firmCategoryId = snapshotValue[ Product.FIRM_CATEGORY_ID ] as? String{
            self.firmCategoryId = firmCategoryId
        }
    }
    
    func toAnyObject() -> Any{
        return [
            Product.ID: self.id!,
            Product.NAME : self.name!,
            Product.DURATION: self.duration!,
            Product.FIRM_CATEGORY_ID: self.firmCategoryId!,
            Product.FIRM_OWNER_ID: self.firmOwnerId!,
            Product.PRICE: self.price!
        ]
    }
}
