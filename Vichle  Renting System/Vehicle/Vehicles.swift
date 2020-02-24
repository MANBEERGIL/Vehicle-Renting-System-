//
//  vehicles.swift
//  Vichle  Renting System
//
//  Created by MANBEER KAUR on 2020-02-10.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
enum  VehicleTypes
{
    case BUS,CAR,MOTORCYCLE
}

enum typesOfFuel
{
    case PETROL,DIESEL
}

protocol Vehicle:DisplayDelegate
{
    var vehicleIdentificationNumber :String { get set }
    var vehicleDiscription :String { get set }
    var manufacturerName :String { get set }
    var isSelfDrive : Bool { get set }
    var driverName:String?{ get set }
    var isInsured:  Bool { get set }
    var insauranceProviderName : String?{ get set }
    var noOfSeats: Int { get set }
    var fuelType:  typesOfFuel{ get set }
    var baseRatePerDay:Int { get set }
    var basePerKm:Int { get set }
    var vehicleType:VehicleTypes{get set}
    
    func display()
}

    

