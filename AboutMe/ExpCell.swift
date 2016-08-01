//
//  ExpCell.swift
//  AboutMe
//
//  Created by THUC NHI on 8/1/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import Foundation

class ExpCell {
    class addCell {
        var label: String
        var img: String
        var desc: String
        init(label : String, img: String, desc: String){
            self.label = label
            self.img = img
            self.desc = desc
        }
    }
    let cell = [
        addCell(label: "Leader", img: "leader.png", desc: "abc"),
        addCell(label: "Mentor/Teacher", img: "mentor.png", desc: "def"),
        addCell(label: "Public Speaker", img: "speaker.png", desc: "ijk"),
        addCell(label: "Volunteer", img: "volunteer.png", desc: "abcs")
    ]
    
    
}
