//
//  EduViewCell.swift
//  AboutMe
//
//  Created by THUC NHI on 7/24/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class EduViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCustomized: UIImageView!
    @IBOutlet weak var labelCustomized: UILabel!
    @IBOutlet weak var descCustomized: UITextView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
