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
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var expcell = tableView.dequeueReusableCellWithIdentifier("Category", forIndexPath: indexPath) as! ExpViewCell
        let exp = experience.cell[indexPath.row]
        let image = UIImage(named: exp.img)
        expcell.labelExp.text = exp.label
        expcell.descExp.text = exp.desc
        expcell.imgExp.image = image
        return expcell
    }
    
    
    override func viewDidLoad() {
        print("hi")
        super.viewDidLoad()
    }
}
