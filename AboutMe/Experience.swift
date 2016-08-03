//
//  Experience.swift
//  AboutMe
//
//  Created by THUC NHI on 7/25/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class Experience: UITableViewController {
    let experience = ExpCell()
    var category = ["Leader","Teacher/Mentor","Public Speaker"]
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return category.count
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return category[section]
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (category[section]) {
            case "Leader": return 5
            case "Teacher/Mentor": return 4
            case "Public Speaker": return 2
            default: return 1
        }
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let expcell = tableView.dequeueReusableCellWithIdentifier("Category", forIndexPath: indexPath) as! ExpViewCell
       
     
                if indexPath.section == 0 {
                let leader = experience.leader[indexPath.row]
                expcell.labelExp.text = leader.label
                expcell.descExp.text = leader.desc
                expcell.timeExp.text = leader.time
        }
        else {
            if indexPath.section == 1{
                let teacher = experience.teacher[indexPath.row]
                expcell.labelExp.text = teacher.label
                expcell.descExp.text = teacher.desc
                expcell.timeExp.text = teacher.time }
            else {
                let speaker = experience.speaker[indexPath.row]
                expcell.labelExp.text = speaker.label
                expcell.descExp.text = speaker.desc
                expcell.timeExp.text = speaker.time
            }
        }
        
        
    
        return expcell
    }
    
    
    override func viewDidLoad() {
        print("hi")
        super.viewDidLoad()
    }
}
