//
//  Age Calculation.swift
//  Vichle  Renting System
//
//  Created by MANBEER KAUR on 2020-02-23.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
public class AgeCalculation{
    
    static func stringToDate(string : String) -> Date {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
        
        let dateformatGet1 = DateFormatter()
        dateformatGet1.dateFormat = "dd/MM/yyyy"
        
        let birthDate1 : Date? = dateformatGet1.date(from: string)
        return birthDate1!
    }
    
    static func calculateAge(birthDate:String)->String//https://stackoverflow.com/questions/33780184/calculate-duration-between-date-ios-in-years-months-and-date-format
    {
        let c=stringToDate(string:birthDate)
        let form = DateComponentsFormatter()
        form.maximumUnitCount = 2
        form.unitsStyle = .full
        form.allowedUnits = [.year, .month, .day]
        guard let s = form.string(from: c, to: Date()) else{return ""}
        return s
        
        
    }
    
}
