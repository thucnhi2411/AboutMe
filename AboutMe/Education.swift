//
//  Education.swift
//  AboutMe
//
//  Created by THUC NHI on 7/23/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class Education: UITableViewController {
    var school = ["Le Quy Don High school for the Gifted","Lafayette College"]
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return school.count
    }
    override func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return school
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell
        
    }
}
