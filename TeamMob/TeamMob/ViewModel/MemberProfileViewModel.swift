//
//  MemberProfileViewModel.swift
//  TeamMob
//
//  Created by DVT on 2018/04/13.
//  Copyright © 2018 dvt. All rights reserved.
//

import Foundation

class MemberProfileViewModel :NSObject, MemberViewModel {
   
    
    var members = [Member]()

    
    //MARK:Init
    init(members:[Member])
    {
        self.members = members

    }
    
   
}
