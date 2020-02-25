//
//  enum+extension.swift
//  Vichle  Renting System
//
//  Created by MANBEER KAUR on 2020-02-23.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
enum ErrorHandling:Error{
    case InvalidEmail
    case InvalidMobileNumber
}

extension String{
    func isEmailValid(email:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
        }
    
    func dateSet(input:String)->String
       {
       let formatter = DateFormatter()
       formatter.dateFormat = "MM/dd/yyyy"
       if let date = formatter.date(from: input) {
           formatter.locale = Locale(identifier: "en_US")
           formatter.dateStyle = .long
           return(formatter.string(from: date))
           }
           return "Incorrect Date"
       }
      func encrypt(password:String)->String
            {
             let charArray=Array(password)
                var s1=String()
                for i in charArray
                {
                    var a=i.asciiValue
                    a=a!+1
                    s1 = s1+String(UnicodeScalar(UInt8?(a!)!))
                    }
                
                return s1
                
            }
           func decrypt(password:String)->String{
                          let charArray=Array(password)
                          var s1=String()
                          for i in charArray
                          {
                              var a=i.asciiValue
                              a=a!-1
                          s1 = s1+String(UnicodeScalar(UInt8?(a!)!))
                          }
                         
                          return s1
                          
                      }
                     
                      }
                  extension Int{
                                       
                                      func isMobileNumberValid(mobile:Int) -> Bool{
                                       //https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift
                                       let mobileNumberRegEx = "[0-9]{10}"
                                       let mobileTest = NSPredicate(format: "SELF MATCHES %@", mobileNumberRegEx)
                                       return mobileTest.evaluate(with: mobile)
                                       }
                                       func km()->String{
                                           return "\(self)km"
                                       }
                                       func currency() -> String
                                              {
                                                  return "$\(self)"
                                              }
                                       func speed()->String
                                       {
                                           return "\(self)km\\hr"
                                       }
                                   }

                                        extension Double{
                                           func currency() -> String
                                           {
                                               return "$\(self)"
                                           }
                                       }

                                   extension Float{
                                          func currency() -> String
                                          {
                                              return "$\(self)"
                                          }
                                      }



