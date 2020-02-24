//
//  person.swift
//  Vichle  Renting System
//
//  Created by MANBEER KAUR on 2020-02-10.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
enum Gender{
    case MALE,FEMALE,OTHERS
    
}
protocol Person:DisplayDelegate{
    var id:Int{get set}
    var firstName:String{get set}
    var lastName:String{get set}
    var gender:Gender{get set}
    var birthDate:String{get set}
    var age : String?{get set}
    var address:String { get set }
    var city :String { get set }
    var mobileNumber:Int{get set}
    var emailId:String{get set}
    var userName:String{get set}
    var password:String{get set}
    
    
    
    func display()
}
