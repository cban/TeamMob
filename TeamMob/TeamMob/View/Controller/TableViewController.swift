//
//  TableViewController.swift
//  TeamMob
//
//  Created by DVT on 2018/04/11.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit
import os.log

class TableViewController :UIViewController,UITableViewDelegate {
    @IBOutlet weak var membersTableView: UITableView!
    
    var memberProfileViewModel :MemberProfileViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memberProfileViewModel = MemberProfileViewModel()
        setTableView()
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }
    
    func setTableView()
    {
        membersTableView.dataSource = self
        membersTableView.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        if(segue.identifier == "sendData") {
            guard let memberProfileViewController = segue.destination as? MemberDetailViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
                
            }
            guard let selectedPersonCell = sender as? PersonTableViewCell else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            guard let indexPath =  membersTableView.indexPath(for: selectedPersonCell) else {
                fatalError("The selected cell is not being diplayed by the table")
            }
            let selectedPerson = memberProfileViewModel.members[indexPath.row]
            memberProfileViewController.member = selectedPerson
        }
    }
   
}

 // MARK: - Table view data source
extension TableViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  memberProfileViewModel.members.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
        
        cell.nameLabel.text = "\(memberProfileViewModel.members[indexPath.row].name)  \(memberProfileViewModel.members[indexPath.row].surname)"
        cell.jobTitleLabel.text = memberProfileViewModel.members[indexPath.row].role.rawValue
        cell.projectLabel.text = memberProfileViewModel.members[indexPath.row].client
        cell.profileImageView.image = memberProfileViewModel.members[indexPath.row].photo
        return cell
    }
}
