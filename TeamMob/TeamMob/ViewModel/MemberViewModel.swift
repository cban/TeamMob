//
//  MemberViewModel.swift
//  TeamMob
//
//  Created by DVT on 2018/04/12.
//  Copyright © 2018 dvt. All rights reserved.
//

import Foundation


protocol MemberViewModel{
    var id : String { get }
    var name: String { get }
    var surname: String { get }
    var client: String { get }
    var startDate: String { get }
    var birthday: String { get }
}
