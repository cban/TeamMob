//
//  TableViewController.swift
//  TeamMob
//
//  Created by DVT on 2018/04/11.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit
import os.log

class TableViewController: UITableViewController {
    
    var MemberNumberTwo:Member!
    var memberNumberOne: Member!
    var memberNumberThree: Member!
    var memberNumberFour: Member!
    var memberNumberFive: Member!
    var memberNumberSix: Member!
    var memberNumberSeven: Member!
    var memberNumberEight: Member!
    var viewModel :MemberProfileViewModel!
    var members : [Member]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeMembers()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
//        switch(segue.identifier ?? ""){
//        case "ShowDetail":
            guard let memberProfileViewController = segue.destination as? MemberDetailViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            guard let selectedPersonCell = sender as? PersonTableViewCell else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            
            guard let indexPath =  tableView.indexPath(for: selectedPersonCell) else {
                fatalError("The selected cell is not being diplayed by the table")
            }
            let selectedPerson = members[indexPath.row]
            memberProfileViewController.member = selectedPerson
       
    }

    
func initializeMembers()
{
    let photo1 = UIImage(named:"male")!
    let photo2 = UIImage(named:"female")!
    let photo3 = UIImage(named:"profilepic")!
    let photo4 = UIImage(named:"youngfemale")!
    let photo5 = UIImage(named:"coolkid")!
    
    memberNumberOne = Member(id:"1",photo: photo5, name:"Cleo",surname:"Banda",jobTitle:"Junior Android Developer",client:"Head office",startDate:"8 January ",birthday: "1 January",telephoneNumber:"083 222 1111")
    
    MemberNumberTwo = Member(id:"2",photo:photo1,name:"Mark",surname:"Arrow",jobTitle:"Lame",client:"Deloitte",startDate:"1 April ",birthday: "5 January" ,telephoneNumber:"083 222 1111")
    
    memberNumberThree = Member(id:"3",photo:photo1,name:"John",surname:"Doe",jobTitle:"Senior IOS Developer",client:"Standard Bank",startDate:"1 April",birthday: "5 February", telephoneNumber:"083 222 1111")
    
    
    memberNumberFour = Member(id:"4",photo:photo2 ,name:"Siphokazi",surname:"Fikeni",jobTitle:"Google Developer Expect",client:"On Bench",startDate:"1 April ",birthday: "17 January",telephoneNumber:"083 222 1111" )
    
    memberNumberFive = Member(id:"5",photo:photo3,name:"Kabo",surname:"M",jobTitle:"MEAN Stack Developer",client:"Head Office",startDate:"1 April ",birthday: "8 January",telephoneNumber:"083 222 1111" )
    memberNumberSix = Member(id:"5",photo:photo2, name:"Pabi",surname:"Moloi",jobTitle:"Graduate Intern ",client:"Head Office",startDate:"1 April ",birthday: "8 January",telephoneNumber:"083 222 1111" )
    memberNumberSeven = Member(id:"5",photo:photo1, name:"Sashen",surname:"Pillay",jobTitle:"Graduate Intern ",client:"Head Office",startDate:"1 January ",birthday: "8 January",telephoneNumber:"083 222 1111")
    
    memberNumberEight = Member(id:"8",photo:photo4,name:"Rochelle",surname:"JVR",jobTitle:"UI/UX Intern ",client:"Head Office",startDate:"1 April ",birthday: "8 September",telephoneNumber:"083 222 1111")
    
    members = [memberNumberOne,MemberNumberTwo,memberNumberThree,memberNumberFour,memberNumberFive,memberNumberSix,memberNumberSeven,memberNumberEight]
   
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
        cell.profileImageView.image = viewModel.members[indexPath.row].photo
     
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
