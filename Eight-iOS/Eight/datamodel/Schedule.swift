//
//  Schedule.swift
//  Eight
//
//  Created by Robert Voicu on 20/03/2019.
//  Copyright © 2019 Robert Voicu. All rights reserved.
//

import Foundation
import Firebase


class Schedule{
    
    public static let ID: String = "id"
    public static let MONDAY: String = "monday"
    public static let TUESDAY: String = "tuesday"
    public static let WEDNESDAY: String = "wednesday"
    public static let THURSDAY: String = "thursday"
    public static let FRIDAY: String = "friday"
    public static let SATURDAY: String = "saturday"
    public static let SUNDAY: String = "sunday"
    public static let MONDAY_WORKING_HOURS: String = "mondayWorkingHours"
    public static let TUESDAY_WORKING_HOURS: String = "tuesdayWorkingHours"
    public static let WEDNESDAY_WORKING_HOURS: String = "wednesdayWorkingHours"
    public static let THURSDAY_WORKING_HOURS: String = "thursdayWorkingHours"
    public static let FRIDAY_WORKING_HOURS: String = "fridayWorkingHours"
    public static let SATURDAY_WORKING_HOURS: String = "saturdayWorkingHours"
    public static let SUNDAY_WORKING_HOURS: String = "sundayWorkingHours"
    
    private var monday: String!
    private var tuesday: String!
    private var wednesday: String!
    private var thursday: String!
    private var friday: String!
    private var saturday: String!
    private var sunday: String!
    private var mondayWorkingHours: String!
    private var tuesdayWorkingHours: String!
    private var wednesdayWorkingHours: String!
    private var thursdayWorkingHours: String!
    private var fridayWorkingHours: String!
    private var saturdayWorkingHours: String!
    private var sundayWorkingHours: String!
    
    init( _ snapshot: DataSnapshot ){
        let snapshotValue = snapshot.value as! [ String: AnyObject ]
        
        if let monday = snapshotValue[ Schedule.MONDAY ] as? String{
            self.monday = monday
        }
        
        if let tuesday = snapshotValue[ Schedule.TUESDAY ] as? String{
            self.tuesday = tuesday
        }
        
        if let wednesday = snapshotValue[ Schedule.WEDNESDAY ] as? String{
            self.wednesday = wednesday
        }
        
        if let thursday = snapshotValue[ Schedule.THURSDAY ] as? String{
            self.thursday = thursday
        }
        
        if let friday = snapshotValue[ Schedule.FRIDAY ] as? String{
            self.friday = friday
        }
        
        if let saturday = snapshotValue[ Schedule.SATURDAY ] as? String{
            self.saturday = saturday
        }
        
        if let sunday = snapshotValue[ Schedule.SUNDAY ] as? String{
            self.sunday = sunday
        }
        
        if let mondayWorkingHours = snapshotValue[ Schedule.MONDAY_WORKING_HOURS ] as? String{
            self.mondayWorkingHours = mondayWorkingHours
        }
        
        if let tuesdayWorkingHours = snapshotValue[ Schedule.TUESDAY_WORKING_HOURS ] as? String{
            self.tuesdayWorkingHours = tuesdayWorkingHours
        }
        
        if let wednesdayWorkingHours = snapshotValue[ Schedule.WEDNESDAY_WORKING_HOURS ] as? String{
            self.wednesdayWorkingHours = wednesdayWorkingHours
        }
        
        if let thursdayWorkingHours = snapshotValue[ Schedule.THURSDAY_WORKING_HOURS ] as? String{
            self.thursdayWorkingHours = thursdayWorkingHours
        }
        
        if let fridayWorkingHours = snapshotValue[ Schedule.FRIDAY_WORKING_HOURS ] as? String{
            self.fridayWorkingHours = fridayWorkingHours
        }
        
        if let saturdayWorkingHours = snapshotValue[ Schedule.SATURDAY_WORKING_HOURS ] as? String{
            self.saturdayWorkingHours = saturdayWorkingHours
        }
        
        if let sundayWorkingHours = snapshotValue[ Schedule.SUNDAY_WORKING_HOURS] as? String{
            self.sundayWorkingHours = sundayWorkingHours
        }
    }
    
    func toAnyObject() -> Any{
        return[
            Schedule.MONDAY: self.monday,
            Schedule.TUESDAY: self.tuesday,
            Schedule.WEDNESDAY: self.wednesday,
            Schedule.THURSDAY: self.thursday,
            Schedule.FRIDAY: self.friday,
            Schedule.SATURDAY: self.saturday,
            Schedule.SUNDAY: self.sunday,
            Schedule.MONDAY_WORKING_HOURS: self.mondayWorkingHours,
            Schedule.TUESDAY_WORKING_HOURS: self.tuesdayWorkingHours,
            Schedule.WEDNESDAY_WORKING_HOURS: self.wednesdayWorkingHours,
            Schedule.THURSDAY_WORKING_HOURS: self.thursdayWorkingHours,
            Schedule.FRIDAY_WORKING_HOURS: self.fridayWorkingHours,
            Schedule.SATURDAY_WORKING_HOURS: self.saturdayWorkingHours,
            Schedule.SUNDAY_WORKING_HOURS: self.sundayWorkingHours,
        ]
    }
    
}
