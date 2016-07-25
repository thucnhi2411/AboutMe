//
//  AwardsViewCell.swift
//  AboutMe
//
//  Created by THUC NHI on 7/25/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class AwardsViewCell: UITableViewCell {
    
    @IBOutlet weak var labelAward: UILabel!
    
    @IBOutlet weak var descAward: UITextView!
    
    @IBOutlet weak var yearAward: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
