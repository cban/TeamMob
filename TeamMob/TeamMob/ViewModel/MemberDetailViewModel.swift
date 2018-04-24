//
//  MemberDetailViewModel.swift
//  TeamMob
//
//  Created by DVT on 2018/04/23.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit
class MemberDetailViewModel
{
    
   var member: Member?
    var name : String
    var surname : String
    var client : String
    var jobTitle : String
    var birthday : String
    var startDate : String
    var telephoneNumber:String
    var photo: UIImage
    
init(id:String,photo:UIImage,name:String,surname:String,jobTitle:String,client:String,startDate:String,birthday:String,telephoneNumber:String,member:Member){
        self.photo = photo
        self.name = name
        self.surname = surname
        self.jobTitle=jobTitle
        self.client = client
        self.startDate = startDate
        self.birthday =  birthday
        self.telephoneNumber = telephoneNumber
        self.member=member
      
    }
}

