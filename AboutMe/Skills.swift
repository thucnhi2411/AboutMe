//
//  Skills.swift
//  AboutMe
//
//  Created by THUC NHI on 8/1/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class Skills: UITableViewController {
    
    var type = ["Social Skills","Language Skills","Technical Skills"]
    var social = ["Leaderships","Event Planning","Teamwork","Mentoring"]
    var socialDesc = ["★★★★★", "★★★★★","★★★★☆","★★★★☆"]
    var language = ["Vietnamese","English","French"]
    var languageDesc = ["★★★★★","★★★★☆","★★★☆☆"]
    var tech = ["HTML/CSS","Swift","Java","JavaScript","Python",""]
    var techDesc = ["★★★☆☆","★★★☆☆","★★★☆☆","★★☆☆☆","★★☆☆☆",""]
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return type.count
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return type[section]
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (type[section]) {
        case "Social Skills": return social.count
        case "Language Skills": return language.count
        case "Technical Skills": return tech.count
        default: return 1
        }
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("skill", forIndexPath: indexPath)
        switch (indexPath.section) {
        case 0:
            cell.textLabel!.text = social[indexPath.row]
            cell.detailTextLabel!.text = socialDesc[indexPath.row]
        case 1:
            cell.textLabel!.text = language[indexPath.row]
            cell.detailTextLabel!.text = languageDesc[indexPath.row]
        case 2:
            cell.textLabel!.text = tech[indexPath.row]
            cell.detailTextLabel!.text = techDesc[indexPath.row]
        default: break
        }
        return cell
        
    }

}
