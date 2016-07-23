//
//  profileVC.swift
//  AboutMe
//
//  Created by THUC NHI on 7/22/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class profileVC: UITableViewController {
    var contact = ["Email","Phone","Website","Github"]
    var detail = ["thucnhi2411@gmail.com","updating","thucnhi2411.github.io","thucnhi2411"]
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(<#T##identifier: String##String#>, forIndexPath: <#T##NSIndexPath#>)
    }
    
}
