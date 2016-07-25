//
//  AwardsCell.swift
//  AboutMe
//
//  Created by THUC NHI on 7/25/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import Foundation

class AwardsCell {
    class AddAwards {
        let label : String
        let desc : String
        let year : String
        init(label : String, desc: String, year: String) {
            self.label = label
            self.desc = desc
            self.year = year
        }
    }
    
    let award = [
        AddAwards(label : "✾ Silver Medal in English", desc: "Olympic English Competition 30-4",year: "2014"),
        AddAwards(label: "✾ Bronze Medal in English", desc: "Competition for excellent students of major high schools in the Northern delta and coastal areas", year: "2015"),
        AddAwards(label: "✾ First Prize in English", desc: "Municipal English Contest for Outstanding students", year: "2015,2016"),
        AddAwards(label: "✾ Gold Medal", desc: "National Internet Olympic English Competition for senior high school students", year: "2015"),
        AddAwards(label: "✾ Third Prize in English", desc: "National Competition for Gifted Students", year: "2016")
        
    ]
    
    
}
