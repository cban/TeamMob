//
//  MemberProfileViewModel.swift
//  TeamMob
//
//  Created by DVT on 2018/04/13.
//  Copyright © 2018 dvt. All rights reserved.
//

import Foundation

class MemberProfileViewModel :NSObject, MemberViewModel {
   
    
    let member :Member
    
    var id: String
    
    var name: String
    
    var surname: String
    
    var client: String
    
    var startDate: String
    
    var birthday: String
    
    //MARK:Init
    init(member:Member)
    {
        self.member = member
        
        self.id = member.id
        self.name = member.name
        self.surname = member.surname
        self.client = member.client
        self.startDate = member.startDate
        self.birthday = member.birthday
    }
    
   
}
