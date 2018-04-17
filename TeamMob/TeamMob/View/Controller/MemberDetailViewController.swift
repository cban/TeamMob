//
//  ViewController.swift
//  TeamMob
//
//  Created by DVT on 2018/04/10.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit

class MemberDetailViewController: UIViewController {

    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var client: UILabel!
    @IBOutlet weak var seniority: UILabel!
    @IBOutlet weak var birthday: UILabel!
    @IBOutlet weak var se: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var profilePhoto: UIImageView!
    
        var member: Member?
    
     override func viewDidLoad() {
     super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        name.text =  member?.name
        client.text = member?.client
        seniority.text = member?.jobTitle
        number.text = member?.telephoneNumber
        birthday.text = member?.birthday
        date.text = member?.startDate
        profilePhoto.image = member?.photo
        
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

