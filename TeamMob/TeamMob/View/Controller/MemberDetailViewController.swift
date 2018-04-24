//
//  ViewController.swift
//  TeamMob
//
//  Created by DVT on 2018/04/10.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit

class MemberDetailViewController: UIViewController {

    @IBOutlet weak var profilePhoto: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var client: UILabel!
    @IBOutlet weak var jobTitle: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var birthday: UILabel!
    @IBOutlet weak var startDate: UILabel!
    var member: Member?
    var memberDetailViewModel: MemberDetailViewModel?
    
     override func viewDidLoad() {
     super.viewDidLoad()

      name.text = "Full name: "+(member?.name)!+" "+(member?.surname)!
      client.text = "Client: "+(member?.client)!
      jobTitle.text = "Job Title: "+(member?.jobTitle)!
      number.text = "Telephone: "+(member?.telephoneNumber)!
      birthday.text = "Birthday: "+(member?.birthday)!
      startDate.text = "Start Date: "+(member?.startDate)!
      profilePhoto.image = member?.photo
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }

}

