//
//  Profile.swift
//  AboutMe
//
//  Created by THUC NHI on 7/23/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class Profile: UITableViewController {
    var contact = ["","Email","Phone","Website","Github",""]
    var detail = ["","thucnhi2411@gmail.com","updating","http://thucnhi2411.github.io","thucnhi2411",""]
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if ( indexPath.row == 0 ) {
			let cell = tableView.dequeueReusableCellWithIdentifier("about", forIndexPath: indexPath) as! ProfileCell
            let singleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "myUITextViewTapped:")
            singleTap.numberOfTapsRequired = 1
            singleTap.numberOfTouchesRequired = 1
            cell.desc.addGestureRecognizer(singleTap)
            cell.desc.userInteractionEnabled = true
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCellWithIdentifier("contact", forIndexPath: indexPath)
            cell.textLabel!.text = contact[indexPath.row]
            cell.detailTextLabel!.text = detail[indexPath.row]
            // mark hyperlink
			if contact[indexPath.row] == "Website" {
				cell.detailTextLabel!.textColor = UIColor.blueColor()
			}
			return cell
        }
        
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (indexPath.row == 0) {
            return 400.0
        }
        else {
            return 44.0
        }
    }
	
	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		let title = contact[indexPath.row]
		if title == "Website" {
			let url = NSURL( string: detail[indexPath.row] )
			UIApplication.sharedApplication().openURL( url! )
		}
		else if title == "Email" {
			let url = NSURL( string: "mailto:thucnhi2411@gmail.com" )
			UIApplication.sharedApplication().openURL( url! )
		}
	}
}
