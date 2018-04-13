//
//  TableViewController.swift
//  TeamMob
//
//  Created by DVT on 2018/04/11.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var MemberNumberTwo:Member!
    var memberNumberOne: Member!
    var memberNumberThree: Member!
    var memberNumberFour: Member!
    var memberNumberFive: Member!
    var memberNumberSix: Member!
    var memberNumberSeven: Member!
    var viewModel :MemberProfileViewModel!
    var members : [Member]!

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeMember()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
func initializeMember()
{
    
    
    memberNumberOne = Member(id:"1",name:"Cleo",surname:"Banda",jobTitle:"Junior Andorid Developer",client:"Head office",startDate:"8 January ",birthday: "1 January" )
    
     MemberNumberTwo = Member(id:"2",name:"Mark",surname:"Arrow",jobTitle:"Lame",client:"Deloitte",startDate:"1 April ",birthday: "5 January" )
    
    memberNumberThree = Member(id:"3",name:"John",surname:"Doe",jobTitle:"Senior IOS Developer",client:"Standard Bank",startDate:"1 April",birthday: "5 February" )
    
    
    memberNumberFour = Member(id:"4",name:"Rebecca",surname:"Franks",jobTitle:"Google Developer Expect",client:"Deloitte",startDate:"1 April ",birthday: "17 January" )
    
    memberNumberFive = Member(id:"5",name:"Kabo",surname:"M",jobTitle:"MEAN Stack Developer",client:"Head Office",startDate:"1 April ",birthday: "8 January" )
    memberNumberSix = Member(id:"5",name:"Pabi",surname:"Moloi",jobTitle:"Graduate Intern ",client:"Head Office",startDate:"1 April ",birthday: "8 January" )
    memberNumberSeven = Member(id:"5",name:"Sashen",surname:"Pillay",jobTitle:"Graduate Intern ",client:"Head Office",startDate:"1 January ",birthday: "8 January" )
    
    
    
    
    members = [memberNumberOne,MemberNumberTwo,memberNumberThree,memberNumberFour,memberNumberFive,memberNumberSix,memberNumberSeven]
   
    viewModel = MemberProfileViewModel(members:members)
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       
        return  members.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
        
        
     
        cell.nameLabel.text = "\(viewModel.members[indexPath.row].name)  \(viewModel.members[indexPath.row].surname)"
        cell.jobTitleLabel.text = viewModel.members[indexPath.row].jobTitle
        cell.projectLabel.text = viewModel.members[indexPath.row].client
     
           return cell
    }
 
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
