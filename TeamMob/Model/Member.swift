//
//  Member.swift
//  TeamMob
//
//  Created by DVT on 2018/04/12.
//  Copyright © 2018 dvt. All rights reserved.
//

import Foundation
struct Member {
    
    // MARK: Properties
    
    let id: String
    let name: String
    let surname: String
    let jobTitle: String
    let client: String
    let startDate: String
    let birthday: String
    
    
    init(id:String,name:String,surname:String,jobTitle:String,client:String,startDate:String,birthday:String){
        self.id = id
        self.name = name
        self.surname = surname
        self.jobTitle=jobTitle
        self.client = client
        self.startDate = startDate
        self.birthday =  birthday
        
    }
}
