//
//  BluetoothDelegate.swift
//  DriveMe
//
//  Created by Eduard Robert Voicu on 19/05/16.
//  Copyright © 2016 robert. All rights reserved.
//

import Foundation
import CoreBluetooth

class BluetoothDelegate: NSObject, CBCentralManagerDelegate{
    
    override init(){
        super.init()
        print( "bluetooth delegate" )
    }
    
    func centralManagerDidUpdateState( _ central: CBCentralManager ) {
        print( "Class: BluetoothDelegate" )
        print( "Method: centralManagerDidUpdateState" )
        switch central.state {
        case .unsupported:
            print( "Bluetooth unsupported" )
        case .poweredOff:
            print( "Bluetooth powered off" )
        case .poweredOn:
            print( "Bluetooth powered on" )
            print( "Start scanning...." )
            central.scanForPeripherals(withServices: nil, options: nil)
        case .resetting:
            print( "Bluetooth reseting" )
        case .unauthorized:
            print( "Bluetooth unauthorized" )
        case .unknown:
            print( "Bluetooth unknown" )
        }
    }
    
    func centralManager( _ central: CBCentralManager, didConnect peripheral: CBPeripheral ) {
        print( "Class: BluetoothDelegate" )
        print( "Method: centralManager()" )
        print( " Peripheral name: ", peripheral.name )
    }
}
