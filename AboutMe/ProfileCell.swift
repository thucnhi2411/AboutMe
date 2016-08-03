//
//  ProfileCell.swift
//  AboutMe
//
//  Created by THUC NHI on 8/1/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {
    @IBOutlet weak var desc: UITextView!
    var arr = ["My name is Thuc-Nhi.",
    "Please feel free to call me Felicity.",
    "I am a freshman at Lafayette College and double major in Economics and Computer Science.",
    "I love playing the piano, baking, listening to music, traveling, working on do-it-yourself projects and meeting people." ]
    var i: Int = 0
       
    func myUITextViewTapped(recognizer: UITapGestureRecognizer) {
        if(recognizer.state == UIGestureRecognizerState.Ended){
            if i < arr.count {
                desc.text = arr[i]
                i = i + 1
            }
			desc.alpha = 0
			UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations:{ self.desc.alpha = 1
			},completion: nil)

        }
	}
    

}
