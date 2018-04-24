//
//  MemberProfileViewModel.swift
//  TeamMob
//
//  Created by DVT on 2018/04/13.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit

class MemberProfileViewModel : NSObject, MemberViewModel {

    var members: [Member]
    let memberRepo = MemberRepository()
 
    override init()
   {
     members = memberRepo.getMembers()
    }
}
