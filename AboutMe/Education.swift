//
//  Education.swift
//  AboutMe
//
//  Created by THUC NHI on 7/24/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class Education: UITableViewController {
    var schoolName = ["Le Quy Don HS for the Gifted", "Lafayette College"]
    let eduCell = EduCell()
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return schoolName[section]
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("EduViewCell", forIndexPath: indexPath) as! EduViewCell
        let highschool = eduCell.highschool[indexPath.row]
        let college = eduCell.college[indexPath.row]
        
        if indexPath.section == 0 {
            let imageHS = UIImage(named: highschool.imageName)
            cell.imageCustomized.image = imageHS
            cell.labelCustomized.text = highschool.label
            cell.descCustomized.text = highschool.desc
        }
        else {
            let imageC = UIImage(named: college.imageName)
            cell.imageCustomized.image = imageC
            cell.labelCustomized.text = college.label
            cell.descCustomized.text = college.desc
        }
        return cell
    }
    override func viewDidLoad() {
        print("hi")
        super.viewDidLoad()
    }
}
