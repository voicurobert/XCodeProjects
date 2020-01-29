//
//  FirebaseManager.swift
//  Eight
//
//  Created by Robert Voicu on 13/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import Foundation
import Firebase


class FirebaseManager{
    
    static let instance: FirebaseManager = FirebaseManager()
    
    static let FIRMS: String = "firm_owners";
    static let CUSTOMERS: String = "customers";
    static let CATEGORIES: String = "categories";
    static let PRODUCTS: String = "products";
    static let EMPLOYEES: String = "employees";
    static let BOOKINS: String = "customers";
    static let SCHEDULES: String = "schedules";
    
    var firmsReference: DatabaseReference;
    var customersReference: DatabaseReference;
    var categoriesReference: DatabaseReference;
    var productsReference: DatabaseReference;
    var employeesReference: DatabaseReference;
    var bookingsReference: DatabaseReference;
    var schdulesReferene: DatabaseReference;
    
    private init(){
        let ref = Database.database();
        firmsReference = ref.reference(withPath: FirebaseManager.FIRMS)
        customersReference = ref.reference(withPath: FirebaseManager.CUSTOMERS)
        categoriesReference = ref.reference(withPath: FirebaseManager.CATEGORIES)
        productsReference = ref.reference(withPath: FirebaseManager.PRODUCTS)
        employeesReference = ref.reference(withPath: FirebaseManager.EMPLOYEES)
        bookingsReference = ref.reference(withPath: FirebaseManager.BOOKINS)
        schdulesReferene = ref.reference(withPath: FirebaseManager.SCHEDULES)
    }
    
    func firmWithEmailExists( email: String,
                              firebaseResponse: @escaping( _ exists: Bool, _ snaphot: DataSnapshot? ) -> Void ){
        firmsReference.observeSingleEvent(of: .value, with: {(snapshot) in
            print( "in observe single event" )
            let enumerator = snapshot.children
            while let fbValue = enumerator.nextObject() as? DataSnapshot {
                let snapshotValue = fbValue.value as! [String: AnyObject]
                if email == snapshotValue[FirmOwner.EMAIL] as? String{
                    firebaseResponse(true, fbValue)
                }
            }
            firebaseResponse(false, nil)
        })
    }
    
    func firmWithEmailAndPasswordExists( email: String,
                                         password: String,
                                         firebaseResponse: @escaping(_ exists: Bool, _ snapshot: DataSnapshot?) -> Void){
        firmsReference.observeSingleEvent(of: .value, with: {(snapshot) in
            print( "in observe single event" )
            let enumerator = snapshot.children
            while let fbValue = enumerator.nextObject() as? DataSnapshot {
                let snapshotValue = fbValue.value as! [String: AnyObject]
                if email == snapshotValue[FirmOwner.EMAIL] as? String &&
                    password == snapshotValue[FirmOwner.PASSWORD] as? String{
                    firebaseResponse(true, fbValue)
                }
            }
            firebaseResponse(false, nil)
        } )
    }
}
