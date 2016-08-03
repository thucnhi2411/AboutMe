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
        let cell = tableView.dequeueReusableCellWithIdentifier("EduViewCell", forIndexPath: indexPath) as! EduViewCell
        let highschool = eduCell.highschool[indexPath.row]
        let college = eduCell.college[indexPath.row]
        
        if indexPath.section == 0 {
            
            cell.labelCustomized.text = highschool.label
            cell.labelCustomized.textAlignment = .Center
            cell.labelCustomized.font = UIFont (name: "Hiragino Sans", size: 25)
            cell.labelCustomized.textColor = UIColor.whiteColor()
            cell.descCustomized.text = highschool.desc
            cell.descCustomized.textAlignment = .Center
            cell.descCustomized.font = UIFont (name: "Hiragino Sans", size: 12)
            cell.descCustomized.textColor = UIColor.whiteColor()
            
            
            if indexPath.row == 0 {
                let backgroundImage1 = UIImage(named: "edu1.png")
                let imageView1 = UIImageView(image: backgroundImage1)
                cell.backgroundView = imageView1
                imageView1.contentMode = .ScaleAspectFill
            }
            else {
                let backgroundImage2 = UIImage(named: "edu2.png")
                let imageView2 = UIImageView(image: backgroundImage2)
                cell.backgroundView = imageView2
                imageView2.contentMode = .ScaleAspectFill
            }
			
        }
        else {
            
            cell.labelCustomized.text = college.label
            cell.labelCustomized.textAlignment = .Center
            cell.labelCustomized.font = UIFont (name: "Hiragino Sans", size: 25)
            cell.labelCustomized.textColor = UIColor.whiteColor()
            cell.descCustomized.text = college.desc
            cell.descCustomized.textAlignment = .Center
            cell.descCustomized.font = UIFont (name: "Hiragino Sans", size: 12)
            cell.descCustomized.textColor = UIColor.whiteColor()
            
            if indexPath.row == 0 {
                let backgroundImage3 = UIImage(named: "edu3.png")
                let imageView3 = UIImageView(image: backgroundImage3)
                cell.backgroundView = imageView3
                imageView3.contentMode = .ScaleAspectFill
            }
            else {
                let backgroundImage4 = UIImage(named: "edu4.png")
                let imageView4 = UIImageView(image: backgroundImage4)
                cell.backgroundView = imageView4
                imageView4.contentMode = .ScaleAspectFill
        }
        }
        
        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 && indexPath.row == 1 {
            performSegueWithIdentifier("Show Awards", sender: self)
        }
    }
    
    override func viewDidLoad() {
        print("hi")
        let backgroundImage = UIImage(named: "backgroundedu.png")
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
        imageView.contentMode = .ScaleAspectFill
        
        super.viewDidLoad()
    }

}
