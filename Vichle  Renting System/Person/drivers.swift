//
//  drivers.swift
//  Vichle  Renting System
//
//  Created by MANBEER KAUR on 2020-02-10.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
class Driver: Person { 
 
    var id: Int
    
    var firstName: String
    
    var lastName: String
    
    var gender: Gender
    
    var birthDate: String
    
    var age: String?
    
    var address:String
      
    var city :String
      
    var mobileNumber: Int
    
    var emailId: String
    
    var userName: String
    
    var password: String
    
    
    var drivingLicenseNumber:String
    var isDrivingHistoryCleared :Bool
    var salary:Int
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: String,address:String,city:String, mobileNumber: Int, emailId: String, userName: String, password: String,drivingLicenseNumber:String,isDrivingHistoryCleared:Bool,salary:Int) throws
     {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate.dateSet(input:birthDate)
        self.address = address
        self.city = city
        if mobileNumber.isMobileNumberValid(mobile:mobileNumber){
                  self.mobileNumber = mobileNumber
              }
              else{
                   throw ErrorHandling.InvalidMobileNumber
              }
       
        self.emailId = emailId
        self.userName = userName
        self.password = password.encrypt(password: password)
        self.drivingLicenseNumber = drivingLicenseNumber
        self.salary = salary
        self.isDrivingHistoryCleared = isDrivingHistoryCleared
        self.age=AgeCalculation.calculateAge(birthDate: birthDate)
        
    }
        
    func display(){
            print("**************DRIVER DETAILS***************")
            print("Driver ID : \(self.id)")
            print("Driver Full Name: \(self.firstName)" ,"\(self.lastName)")
            print("Gender :\(self.gender)")
            print("Birth Date :\(self.birthDate)")
            print("Age:  \(String(describing: self.age))")
            print("Mobile Number :\(self.mobileNumber)")
            print("Address :\(self.address)")
            print("City :\(self.city)")
            print("EmailID :\(String(describing: self.emailId))")
            print("UserName :\(userName)")
            print("Encrypted Password :\(String(describing: self.password))")
      //  print("Decrypted Password :\(String(describing: self.password.decrypt(password: self.password)))")
            print("Driving License Number : \(self.drivingLicenseNumber)")
            print("Is Driving History Cleared ? : \(self.isDrivingHistoryCleared)")
        print("Salary : \(self.salary.currency())")
        
    }
    
}
