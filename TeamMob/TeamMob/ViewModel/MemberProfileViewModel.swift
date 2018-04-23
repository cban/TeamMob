//
//  MemberProfileViewModel.swift
//  TeamMob
//
//  Created by DVT on 2018/04/13.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit

class MemberProfileViewModel : NSObject, MemberViewModel {
    
    
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
      return cell
    }
    
   
    
    var members = [Member]()

    
    //MARK:Init
    init(members:[Member])
    {
        self.members = members

    }

   
}
