//
//  text.swift
//  AboutMe
//
//  Created by THUC NHI on 8/1/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class text: UIViewController {
    @IBOutlet weak var textarray: UITextView!
    var arr = ["ab", "cd", "ef", "gc"]
     var i: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let singleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "myUITextViewTapped:")
        singleTap.numberOfTapsRequired = 1
        singleTap.numberOfTouchesRequired = 1
        self.textarray.addGestureRecognizer(singleTap)
        self.textarray.userInteractionEnabled = true
        
        
    }
    
    func myUITextViewTapped(recognizer: UITapGestureRecognizer) {
        if(recognizer.state == UIGestureRecognizerState.Ended){
            print("myUITextView has been tapped by the user.")
            if i < arr.count {
            textarray.text = arr[i]
            i = i + 1
            }
           
            
        }
    }

}
