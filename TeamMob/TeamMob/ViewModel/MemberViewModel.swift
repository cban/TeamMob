//
//  MemberViewModel.swift
//  TeamMob
//
//  Created by DVT on 2018/04/12.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit


protocol MemberViewModel{
    
    var members :[Member] { get }
    func cellInstance(_ tableView:UITableView,indexPath:  IndexPath) -> UITableViewCell
    
  //  func getCellViewModel( at indexPath:IndexPath) -> MemberProfileViewModel
    
    

}
