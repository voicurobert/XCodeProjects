//
//  BluetoothManager.swift
//  DriveMe
//
//  Created by Eduard Robert Voicu on 19/05/16.
//  Copyright © 2016 robert. All rights reserved.
//

import Foundation
import CoreBluetooth

class BluetoothManager{
    
    var centralManager : CBCentralManager!
    var bluetoothDelegate : BluetoothDelegate!
    
    init(){
        self.bluetoothDelegate = BluetoothDelegate()
        self.centralManager = CBCentralManager( delegate: self.bluetoothDelegate, queue: nil )
        //self.centralManager.scanForPeripheralsWithServices(nil, options: nil)
        print( self.centralManager.isScanning )
    }
    
    
}