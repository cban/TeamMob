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
    
     override func viewDidLoad() {
     super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//
      name.text =  member?.name
      client.text = member?.client
      jobTitle.text = member?.jobTitle
      number.text = member?.telephoneNumber
      birthday.text = member?.birthday
      startDate.text = member?.startDate
      profilePhoto.image = member?.photo
//
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

