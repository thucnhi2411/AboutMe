//
//  Awards.swift
//  AboutMe
//
//  Created by THUC NHI on 7/25/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class Awards: UITableViewController {
    var parentView: Education = Education()
    let awardCell = AwardsCell()
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("awardcell", forIndexPath: indexPath) as! AwardsViewCell
        let award = awardCell.award[indexPath.row]
        cell.labelAward.text = award.label
        cell.descAward.text = award.desc
        cell.yearAward.text = award.year
        return cell
    }
}
