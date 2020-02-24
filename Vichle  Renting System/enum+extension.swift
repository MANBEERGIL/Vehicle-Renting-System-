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
      
