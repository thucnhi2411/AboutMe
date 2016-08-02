//
//  ExpViewCell.swift
//  AboutMe
//
//  Created by THUC NHI on 8/1/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class ExpViewCell: UITableViewCell {
    
    @IBOutlet weak var descExp: UITextView!
    @IBOutlet weak var labelExp: UILabel!
    
    @IBOutlet weak var timeExp: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
       
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
