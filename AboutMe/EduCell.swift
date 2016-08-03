//
//  EduCell.swift
//  AboutMe
//
//  Created by THUC NHI on 7/24/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import Foundation

class EduCell {
    class AddInfo {
        let label : String
        let desc : String
       
        init(label : String, desc: String) {
            self.label = label
            self.desc = desc
            
        }
    }
    
    let highschool = [
        AddInfo(label : "GPA", desc: "9.1/10"),
        AddInfo(label : "Awards", desc: "Click for details!")
    ]
     let college = [
       AddInfo(label : "Major", desc: "B.S. in Computer Science \nB.A. in Economics"),
        AddInfo(label : "Fall 2016 Coursework", desc: "CS104: Introduction to Game Programming \nMATH162: Calculus II \nPHIL200: Logic")
        
    ]
    
    
}
