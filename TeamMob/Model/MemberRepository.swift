//
//  MemberRepository.swift
//  TeamMob
//
//  Created by DVT on 2018/04/23.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit

struct  MemberRepository  {
    
    func getMembers() -> [Member] {
        var MemberNumberTwo:Member?
        var memberNumberOne: Member?
        var memberNumberThree: Member?
        var memberNumberFour: Member?
        var memberNumberFive: Member?
        var memberNumberSix: Member?
        var memberNumberSeven: Member?
        var memberNumberEight: Member?
        var members: [Member]
        
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
        
        members = [memberNumberOne!,MemberNumberTwo!,memberNumberThree!,memberNumberFour!,memberNumberFive!,memberNumberSix!,memberNumberSeven!,memberNumberEight!]
        return members
    }

}
