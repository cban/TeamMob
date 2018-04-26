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
    @IBOutlet weak var seniority: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var birthday: UILabel!
    @IBOutlet weak var startDate: UILabel!
    @IBOutlet weak var platformLogo: UIImageView!
    var member: Member?
    var memberDetailViewModel: MemberDetailViewModel?
    
    enum Role:String {
        case Android = "Android Developer",IOS = "IOS Developer",Mean = "MEAN Stack Developer",Xamarin = " Xamarin Developer", UIUX = "UI/UX Designer" ,Google = "Google Developer Expert"
    }
     override func viewDidLoad() {
     super.viewDidLoad()

      name.text = "Full name: "+(member?.name)!+" "+(member?.surname)!
      client.text = "Client: "+(member?.client)!
      jobTitle.text = "Role: "+(member?.role.rawValue)!
      seniority.text = "Seniority: "+(member?.seniority)!
      number.text = "Telephone: "+(member?.telephoneNumber)!
      birthday.text = "Birthday: "+(member?.birthday)!
      startDate.text = "Start Date: "+(member?.startDate)!
      profilePhoto.image = member?.photo
      switchLabelColor(platform: (member?.role.rawValue)!)
      selectLogo(platform: (member?.role.rawValue)!)
    }
   
    
    func switchLabelColor (platform : String){
        switch platform
        {
        case Role.Android.rawValue :
          jobTitle.textColor = UIColor.androidGreen
        case Role.Mean.rawValue :
          jobTitle.textColor = UIColor.red
        case Role.IOS.rawValue :
            jobTitle.textColor = UIColor.iosBlue
        case Role.Xamarin.rawValue :
           jobTitle.textColor = UIColor.teamBlue
        case Role.UIUX.rawValue :
          jobTitle.textColor = UIColor.red
        default:
          jobTitle.textColor = UIColor.darkGray
        }
    }
    
    func selectLogo(platform : String){
        switch platform
        {
        case Role.Android.rawValue :
        platformLogo.image = UIImage(named:"android")!
        case Role.IOS.rawValue :
              platformLogo.image = UIImage(named:"apple")!
        case Role.Mean.rawValue :
            platformLogo.image = UIImage(named:"mean")!
        case Role.Xamarin.rawValue :
            platformLogo.image = UIImage(named:"xamarin")!
        case Role.UIUX.rawValue :
            platformLogo.image = UIImage(named:"uiux")!
            
        default:
                platformLogo.image = UIImage(named:"android")!
        }

    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }

}

