//
//  Owner.swift
//  Vichle  Renting System
//
//  Created by MANBEER KAUR on 2020-02-11.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
class Owner: Person{ 
 
    var id: Int
    
    var firstName: String
    
    var lastName: String
    
    var gender: Gender
    
    var birthDate: String
    
    var age: String?
    
    var address: String
    
    var city: String
    
    var mobileNumber: Int
    
    var emailId: String
    
    var userName: String
    
    var password: String
     
    var  companyTitle:String
    
    var businessLandLineNumber:String
    
    var website:String
    var vehicleList = [String : Vehicle]()
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: String, address:String,city:String, mobileNumber: Int, emailId: String, userName: String, password: String,companyTitle:String,businessLandLineNumber:String,website:String) throws
    {
               self.id = id
               self.firstName = firstName
               self.lastName = lastName
               self.gender = gender
               self.birthDate = birthDate.dateSet(input:birthDate)
        if mobileNumber.isMobileNumberValid(mobile:mobileNumber){
                         self.mobileNumber = mobileNumber
                     }
                     else{
                          throw ErrorHandling.InvalidMobileNumber
                     }
              if emailId.isEmailValid(email:emailId){
                 
              }
              else{
                   throw ErrorHandling.InvalidEmail
              }
               self.userName = userName
               self.password = password.encrypt(password: password)
               self.address = address
               self.city = city
               self.companyTitle = companyTitle
               self.businessLandLineNumber = businessLandLineNumber
               self.website = website
                self.age=AgeCalculation.calculateAge(birthDate: birthDate)
       
    }
    func addVehicleList(vehicleOwned: Vehicle, vehicleIdentificationNumber: String)
    {
        vehicleList.updateValue(vehicleOwned, forKey: vehicleIdentificationNumber)
    }
    
    func removeVehicleList(vehicleIdentificationNumber: String)
    {
        vehicleList.removeValue(forKey: vehicleIdentificationNumber)
    }
    
    func display() {
               print("************* OWNER DETAILS **************")
               print("Owner ID : \(self.id)")
               print("Owner Full Name: \(self.firstName)" ,"\(self.lastName)")
               print("Gender :\(self.gender)")
                print("Birth Date :\(self.birthDate)")
        print("Age:  \(String(describing: self.age))")
               print("Mobile Number :\(self.mobileNumber)")
               print("Company Titles :\(self.companyTitle)")
               print("Business Landline Number : \(self.businessLandLineNumber)")
               print("Website : \(self.website)")
               print("Address :\(self.address)")
               print("City :\(self.city)")
               print("EmailID :\(String(describing: self.emailId))")
               print("UserName :\(self.userName)")
               print("Password :\(String(describing: self.password))")
    if vehicleList.count == 0{
            print("Owner has no vehicle")
        } else{
            for i in vehicleList{
                i.value.display()
                print("***********************************")
                
            }
        }
    }
    }
