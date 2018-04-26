//
//  PersonTableViewCell.swift
//  TeamMob
//
//  Created by DVT on 2018/04/11.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell{
    
    enum Role:String {
        case Android = "Android Developer",IOS = "IOS Developer",Mean = "MEAN Stack Developer",Xamarin = " Xamarin Developer", UIUX = "UI/UX Designer" ,Google = "Google Developer Expert"
    }
    
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var projectLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let radius = profileImageView.frame.width/2
        profileImageView.layer.cornerRadius = radius
        profileImageView.layer.masksToBounds = true
        
    }
    func switchLabelColor (platform : String){
        switch platform
        {
        case Role.Android.rawValue :
            jobTitleLabel.textColor = UIColor.androidGreen
        case Role.Mean.rawValue :
            jobTitleLabel.textColor = UIColor.red
        case Role.IOS.rawValue :
            jobTitleLabel.textColor = UIColor.iosBlue
        case Role.Xamarin.rawValue :
            jobTitleLabel.textColor = UIColor.teamBlue
        case Role.UIUX.rawValue :
            jobTitleLabel.textColor = UIColor.meanYellow
        default:
            jobTitleLabel.textColor = UIColor.meanYellow
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
    





