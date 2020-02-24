//
//  vehicleRent.swift
//  Vichle  Renting System
//
//  Created by MANBEER KAUR on 2020-02-11.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
class VehicleRent:DisplayDelegate{
    var vehicleRentId:Int
    var rentStartDate:String
    var rentEndDate:String
    var vehicles = [String: Vehicle]()
    var kmDrived : Int
    var totalBill : Float = 0.0
    var noOfDays:Int=0
  

init(vehicleRentId:Int,rentStartDate: String,rentEndDate: String ,kmDrived:Int)
        {
            self.vehicleRentId=vehicleRentId
            self.rentStartDate = rentStartDate
            self.rentEndDate = rentEndDate
            self.kmDrived = kmDrived
            self.noOfDays = calculateTotalDays(startDate: rentStartDate, endDate: rentEndDate)
            }
    func addVehicle(vehicle: Vehicle, vinNumber: String)
    {
        vehicles.updateValue(vehicle, forKey: vinNumber)
    }
    
    func removeVehicle(vinNumber: String)
    {
        vehicles.removeValue(forKey: vinNumber)
    }
    //func calculateTotalBill(RentPerDay:Int,RentPerKm:Int,kmDrived:Int,noOfDays:Int)
    //{
     //   self.totalBill = Float((RentPerDay*noOfDays)+(RentPerKm*kmDrived))
    //    print(self.totalBill)
   // }
    func calculateTotalDays(startDate:String,endDate:String)->Int{
        let d1=AgeCalculation.stringToDate(string: startDate)
         let d2=AgeCalculation.stringToDate(string: endDate)
        let current = Calendar.current
        let numberOfDays = current.dateComponents([Calendar.Component.day], from: d1, to: d2)
        return numberOfDays.day!
    }
        func display() {
           
                for i in vehicles
                {
                    i.value.display()
                    totalBill = Float((i.value.baseRatePerDay * self.noOfDays)+(i.value.basePerKm * self.kmDrived))
                    
                    print("\n-------------------- RENT DETAILS -------------------\n")
                    print("Rent Start Date : \(self.rentStartDate)")
                    print("Rent End Date : \(self.rentEndDate)")
                    print("Total Days: \(self.noOfDays)")
                   print("Number of KM Drived : \(self.kmDrived.km())")
                    print("Total Bill : \(totalBill.currency())")
                    print("####################################################")
                    
                }
            }
    }

    
    
    
    

