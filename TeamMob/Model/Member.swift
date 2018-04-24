//
//  Member.swift
//  TeamMob
//
//  Created by DVT on 2018/04/12.
//  Copyright © 2018 dvt. All rights reserved.

import Foundation
import UIKit
struct Member {
    
    // MARK: Properties
    let id: String
    let photo:UIImage
    let name: String
    let surname: String
    let jobTitle: String
    let client: String
    let startDate: String
    let birthday: String
    let telephoneNumber :String
 init(id:String,photo:UIImage,name:String,surname:String,jobTitle:String,client:String,startDate:String,birthday:String,telephoneNumber:String){
        self.id = id
        self.photo = photo
        self.name = name
        self.surname = surname
        self.jobTitle=jobTitle
        self.client = client
        self.startDate = startDate
        self.birthday =  birthday
        self.telephoneNumber = telephoneNumber
        
    }
}
