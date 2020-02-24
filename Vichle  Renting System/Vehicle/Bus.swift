//
//  Bus.swift
//  Vichle  Renting System
//
//  Created by MANBEER KAUR on 2020-02-11.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
enum busType{
    case MINI,VOLVO
    }

class Bus: Vehicle {

    var vehicleType: VehicleTypes
    
    var vehicleIdentificationNumber: String
    
    var vehicleDiscription: String
    
    var manufacturerName: String
    
    var isSelfDrive: Bool
    
    var driverName: String?
    
    var isInsured: Bool
    
    var insauranceProviderName: String?
    
    var noOfSeats: Int
    
    var fuelType: typesOfFuel
     
    var baseRatePerDay: Int
    
    var basePerKm: Int
    
    //var typeOfBus:busType
    
    var isAccessibilityServiceAvailable: Bool;
    
    var isWifiAvailable: Bool;
      var driver = [Int: Driver]()
    
    init(vehicleIdentificationNumber :String,vehicleDiscription :String,manufacturerName :String,vehicleType:VehicleTypes,isSelfDrive : Bool,driverName:String?,isInsured:Bool,insauranceProviderName : String?,noOfSeats: Int,fuelType: typesOfFuel,baseRatePerDay:Int,basePerKm:Int,isAccessibilityServiceAvailable: Bool,isWifiAvailable: Bool)
    {
        self.vehicleIdentificationNumber = vehicleIdentificationNumber
        self.vehicleDiscription = vehicleDiscription
        self.vehicleType = vehicleType
        self.manufacturerName = manufacturerName
        
            self.isSelfDrive = isSelfDrive
        if isSelfDrive==false{
            self.driverName = driverName}
        self.isInsured = isInsured
        if isInsured==true{
            self.insauranceProviderName = insauranceProviderName}
        self.noOfSeats = noOfSeats
        self.fuelType = fuelType
        self.baseRatePerDay = baseRatePerDay
        self.basePerKm = basePerKm
        self.isAccessibilityServiceAvailable = isAccessibilityServiceAvailable
        self.isWifiAvailable = isWifiAvailable
    }
    func addDriver(driverId: Int, driverObj: Driver)
          {
              driver.updateValue(driverObj, forKey: driverId)
          }
       func removeDriver(driverId: Int)
       {
           driver.removeValue(forKey: driverId)
       }
          
    
    func display() {
        
        print("_____________Bus Details________________")
        print("Vehicle Identification Number : \(self.vehicleIdentificationNumber)")
        print("Vehicle Disctription : \(self.vehicleDiscription)")
      
        print("Manufacturer Name :\(self.manufacturerName) ")
        print("Is Self Drive :\(self.isSelfDrive)")
        print("Driver Name :\(self.driverName ?? "It is self Drive") ")
        print("Is Insured :\(self.isInsured)")
        print("Insaurance Provider Name :\(String(describing: self.insauranceProviderName))")
        print("No Of Seats :\(self.noOfSeats)")
        print("Fuel Type :\(self.fuelType)")
        print("Base Rate Per Day :\(self.baseRatePerDay.currency())")
        print("Base Per KM :\(self.basePerKm.currency())" )
        print("Is Accesibility Service Available :\(self.isAccessibilityServiceAvailable)")
        print("Is Wifi Available :\(self.isWifiAvailable)")
        if driver.count==0{
            print("*******************************************************")
                  print("IT IS SELF DRIVE**NO DRIVER")
            print("*******************************************************")
              }
              else{
            print("*******************************************************")
              for i in driver{
                  i.value.display()
                  }
            print("*******************************************************")
        }
    }
    

}
