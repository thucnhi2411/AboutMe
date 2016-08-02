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
        var time: String
        var desc: String
        init(label : String, time: String, desc: String){
            self.label = label
            self.time = time
            self.desc = desc
        }
    }
    let leader = [
        addCell(label: "✺Co-Founder and Co-President", time: "▶︎7/2014 – 7/2016", desc: "Elite Navigation and Preparation Organization (ENPO), Vietnam"),
        addCell(label: "✺Monitor", time: "▶︎7/2013 – 5/2016", desc: "Class 10D1, 11D1, 12D1, Le Quy Don High School for the Gifted"),
        addCell(label: "✺Vice President and Pianist", time: "▶︎9/2013 - 5/2016", desc: "Music Club of Le Quy Don High School for the Gifted"),
        addCell(label: "✺Head of Organizing Team", time: "▶︎7/2014 – 8/2015", desc: "ENPO Study-Abroad Conference 2014, 2015"),
        addCell(label: "✺Head of Organizing Team", time: "▶︎1/2015 – 2/2015", desc: "Tet 2015 Charity Project of ENPO")
    ]
    let teacher = [
        addCell(label: "✺Teaching Assistant", time: "▶︎9/2013 – 8/2015", desc: "Help to teach the piano to primary school students"),
        addCell(label: "✺Mentor", time: "▶︎3/2015 – 4/2015", desc: "Project “I love honesty” of Live and Learn"),
        addCell(label: "✺Mentor", time: "▶︎5/2016 – 8/2016", desc: "Prepare band-7 IELTS skills for a 11-grade student"),
        addCell(label: "✺Mentor", time: "▶︎8/2016 – Now", desc: "Give college application advice to a 12-grade student")
    ]
    let speaker = [
        addCell(label: "✺Guest Speaker", time: "▶︎7/2016", desc: "Talk about College Application Process in VietAbroader Study Abroad Conference 2016"),
        addCell(label: "✺Guest Speaker", time: "▶︎8/2016", desc: "Talk about Studying in the USA in ENPO Study Abroad Conference 2016")
    ]
  
    
    
}
