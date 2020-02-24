//
//  MotorCycle.swift
//  Vichle  Renting System
//
//  Created by MANBEER KAUR on 2020-02-11.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
class MotorCycle: Vehicle
{
    
    var fuelType: typesOfFuel
    
    var vehicleType: VehicleTypes
    
    var vehicleIdentificationNumber: String
    
    var vehicleDiscription: String
    
    var manufacturerName: String
    
    var isSelfDrive: Bool
    
    var driverName: String?
    
    var isInsured: Bool
    
    var insauranceProviderName: String?
    
    var noOfSeats: Int
    
    var baseRatePerDay: Int
    
    var basePerKm: Int
    var milage:Int
    
    var maxTopSpeed: Int
     var driver = [Int: Driver]()
    
    init(vehicleIdentificationNumber :String,vehicleDiscription :String,manufacturerName :String,vehicleType:VehicleTypes,milage:Int,maxTopSpeed:Int,isSelfDrive : Bool,driverName:String?,isInsured:Bool,insauranceProviderName : String?,noOfSeats: Int,fuelType: typesOfFuel,baseRatePerDay:Int,basePerKm:Int)
    {
        self.vehicleIdentificationNumber = vehicleIdentificationNumber
        self.vehicleDiscription = vehicleDiscription
   
        self.vehicleType = vehicleType
        self.milage = milage
        self.maxTopSpeed = maxTopSpeed
        self.manufacturerName = manufacturerName
        self.isSelfDrive = isSelfDrive
        if isSelfDrive==false{
        self.driverName = driverName
        }
        self.isInsured = isInsured
        if isInsured==true
        {
            self.insauranceProviderName = insauranceProviderName
            
        }
        self.noOfSeats = noOfSeats
        self.fuelType = fuelType
        self.baseRatePerDay = baseRatePerDay
        self.basePerKm = basePerKm
    
    }
    func addDriver(driverId: Int, driverObj: Driver)
       {
           driver.updateValue(driverObj, forKey: driverId)
       }
    func removeDriver(driverId: Int)
    {
        driver.removeValue(forKey: driverId)
    }
    
    func display()
    {
        print("_____________MotorCycle Details________________")
        print("Vehicle Identification Number : \(self.vehicleIdentificationNumber)")
        print("Vehicle Disctription : \(self.vehicleDiscription)")
        print("Vehicle Type : \(self.vehicleType)")
        print("Manufacturer Name :\(self.manufacturerName) ")
        print("Milage :\(self.milage.speed())")
        print("Maximum Top Speed :\(self.maxTopSpeed.speed())")
        print("Is Self Drive :\(self.isSelfDrive)")
        print("Driver Name :\(String(describing: self.driverName)) ")
        print("Is Insured :\(self.isInsured)")
        print("Insaurance Provider Name :\(String(describing: self.insauranceProviderName))")
        print("No Of Seats :\(self.noOfSeats)")
        print("Fuel Type :\(self.fuelType)")
        print("Base Rate Per Day :\(self.baseRatePerDay.currency())")
        print("Base Per KM :\(self.basePerKm.currency())" )
        
            print("*******************************************************")
        if driver.count==0{
            print("IT IS SELF DRIVE")
            print("*******************************************************")
        }
       
      
        }
        
    }
    

}
