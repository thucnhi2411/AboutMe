//
//  Experience.swift
//  AboutMe
//
//  Created by THUC NHI on 7/25/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class Experience: UITableViewController {
    var category = ["Organizer", "Teacher/Mentor","Public Speaker","Volunteer"]
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Category", forIndexPath: indexPath)
        cell.textLabel?.text = category[indexPath.row]
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    override func viewDidLoad() {
        print("hi")
        super.viewDidLoad()
    }
}
