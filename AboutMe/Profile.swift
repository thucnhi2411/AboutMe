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
    var detail = ["","ab","cd","ge","xy",""]
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell : UITableViewCell
        if ( indexPath.row == 0 ) {
            cell = tableView.dequeueReusableCellWithIdentifier("about", forIndexPath: indexPath)
            tableView.rowHeight = 400.0
            
        }
        else {
            cell = tableView.dequeueReusableCellWithIdentifier("contact", forIndexPath: indexPath)
            cell.textLabel!.text = contact[indexPath.row]
            cell.detailTextLabel?.text = detail[indexPath.row]
            tableView.rowHeight = 44.0
            
        }
        return cell
        
    }
    override func viewDidLoad() {
        print("hi")
        super.viewDidLoad()
    }
}
