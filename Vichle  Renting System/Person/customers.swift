//
//  customers.swift
//  Vichle  Renting System
//
//  Created by MANBEER KAUR on 2020-02-10.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
class Customers:Person{
    var emailId: String
    var password: String
    
     var id: Int
    
    var firstName: String
    
    var lastName: String
    var fullName:String{
        return "\(firstName) \(lastName)"
    }
    
    var gender: Gender
    
    var birthDate: String
    
    var age: String?
    var customerAge:String?{
        get{
            return age
        }
    }
    
    
    var address:String
      
    var city :String
      
    
    var mobileNumber: Int
    
    var userName: String
    var objVehicle = [Int:VehicleRent]()
    
    
  
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: String, address:String, city:String, mobileNumber: Int, emailId: String, userName: String, password: String) throws
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate.dateSet(input:birthDate)
        
       self.userName = userName
        self.password = password.encrypt(password: password)
        self.address = address
        self.city = city
        //self.objVehicle=objVehicle
        if emailId.isEmailValid(email:emailId){
                   self.emailId = emailId
               }
               else{
                    throw ErrorHandling.InvalidEmail
               }
        if mobileNumber.isMobileNumberValid(mobile:mobileNumber){
        self.mobileNumber = mobileNumber
                    }
        else{
            throw ErrorHandling.InvalidMobileNumber
            }
        self.age=AgeCalculation.calculateAge(birthDate: birthDate) 
    }
    
    func addVehicle(vehicle: VehicleRent, vehicleRentId: Int)
       {
           objVehicle.updateValue(vehicle, forKey: vehicleRentId)
       }
       
       func removeVehicle(vehicleRentId: Int)
       {
           objVehicle.removeValue(forKey: vehicleRentId)
       }
    
   
    
    func display() {
        print("************* CUSTOMER DETAILS **************")
        print("Customer ID : \(self.id)")
        print("Customer Full Name: \(self.fullName)")
        print("Gender :\(self.gender)")
         print("Birth Date :\(self.birthDate)")
        print("Age:  \(String(describing: self.age))")
        print("Mobile Number :\(self.mobileNumber)")
        print("Address :\(self.address)")
        print("City :\(self.city)")
        print("EmailID :\(String(describing: self.emailId))")
        print("UserName :\(self.userName)")
        print("Password :\(String(describing: self.password))")
        print("     ------VEHICLE RENTED BY THE CUSTOMER------        ")
                       print("*******************************************")
        if objVehicle.count == 0{
            print("NO VEHICLE RENTED")
        }
        else{
        for i in objVehicle{
            i.value.display()
            }}
        
    }
    
}
