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
        
        
        var memberNumberOne: Member?
        var memberNumberTwo:Member?
        var memberNumberThree: Member?
        var memberNumberFour: Member?
        var memberNumberFive: Member?
        var memberNumberSix: Member?
        var memberNumberSeven: Member?
        var memberNumberEight: Member?
        var memberNumberNine: Member?
         var memberNumberTen: Member?
        var members: [Member]
        
        let photo1 = UIImage(named:"boy")!
        let photo2 = UIImage(named:"randomgirl")!
        let photo3 = UIImage(named:"profilepic")!
        let photo4 = UIImage(named:"smilinggirl")!
        let photo5 = UIImage(named:"coolkid")!
        let photo6 = UIImage(named:"randomwoman")!
         let photo7 = UIImage(named:"johndoe")!
        
        memberNumberOne = Member(id:"1",photo: photo5, name:"Cleopas",surname:"Banito",role:.Android, seniority: "Junior",client:"Head office",startDate:"21 January 2018 ",birthday: "1 January",telephoneNumber:"083 222 1111")
      
        memberNumberTwo = Member(id:"2",photo:photo1,name:"Mark",surname:"Marrow",role:.Xamarin, seniority: "Intermidiate",client:"Deloitte",startDate:"1 February 2018 ",birthday: "5 January" ,telephoneNumber:"083 222 1111")
        
        memberNumberThree = Member(id:"3",photo:photo7,name:"John",surname:"Doe",role: .IOS, seniority: "Senior",client:"Standard Bank",startDate:"1 April 2018",birthday: "5 February", telephoneNumber:"083 222 1111")
        
        memberNumberFour = Member(id:"4",photo:photo2 ,name:"Siphokazi",surname:"Feeks",role:.Google, seniority: "Senior",client:"On Bench",startDate:"1 April 2016 ",birthday: "17 January",telephoneNumber:"077 222 1111" )
        
        memberNumberFive = Member(id:"5",photo:photo3,name:"Kabo",surname:"M",role: .Mean ,seniority:"Graduate",client:"Head Office",startDate:"1 April 2018",birthday: "8 January",telephoneNumber:"064 222 1111" )
        memberNumberSix = Member(id:"5",photo:photo6, name:"Tif",surname:"Moloi",role:.IOS, seniority: "Graduate",client:"Head Office",startDate:"15 January 2018",birthday: "8 January",telephoneNumber:"032 222 1111" )
        memberNumberSeven = Member(id:"5",photo:photo1, name:"Sashen",surname:"Peanuts",role:.Android, seniority: "Ïntern",client:"Head Office",startDate:"1 January 2018 ",birthday: "8 January",telephoneNumber:"071  222 3311")
        
        memberNumberEight = Member(id:"8",photo:photo4,name:"Roch",surname:"JVR",role:.UIUX, seniority: "Junior",client:"Head Office",startDate:"1 April 2018 ",birthday: "8 September",telephoneNumber:"061 222 1111")
        
          memberNumberNine = Member(id:"9",photo:photo1,name:"Myric",surname:"November",role:.Android, seniority: "Junior",client:"ABSA",startDate:"1 April 2017 ",birthday: "15 September",telephoneNumber:"083 222 1111")
        
        memberNumberTen = Member(id:"10",photo:photo3,name:"Pieter",surname:"Fanta",role:.Android, seniority: "Intermidiate",client:"ABSA",startDate:"1 March 2018 ",birthday: "15 September",telephoneNumber:"083 222 1111")
        
        members = [memberNumberOne!,memberNumberTwo!,memberNumberThree!,memberNumberFour!,memberNumberFive!,memberNumberSix!,memberNumberSeven!,memberNumberEight!,memberNumberNine!,memberNumberTen!]
        return members
    }

}
