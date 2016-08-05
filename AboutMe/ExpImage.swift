//
//  ExpImage.swift
//  AboutMe
//
//  Created by THUC NHI on 8/5/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class ExpImage: UIViewController {

    @IBOutlet weak var imageGallery: UIImageView!
    @IBOutlet weak var caption: UITextView!
    var i: Int = 0
    var parentView: Experience = Experience()
    let gallery : [UIImage] = [
        UIImage(named: "3.png")!,
        UIImage(named: "4.png")!,
        UIImage(named: "5.png")!,
        UIImage(named: "7.png")!,
        UIImage(named: "6.png")!
    ]
    let expCaption = [
        "Co-Founder and Co-President: Elite Navigation and Preparation Organization (ENPO), Vietnam",
        "Head of Organizing Team: ENPO Study-Abroad Conference 2014, 2015",
        "Head of Organizing Team: Tet 2015 Charity Project of ENPO",
    
        "Mentor: Project “I love honesty” of Live and Learn",
  
        "Guest Speaker: Talk about College Application Process in VietAbroader Study Abroad Conference 2016"
    
    ]
    override func viewDidLoad() {
        imageGallery.image = gallery[0]
        
        let right = UISwipeGestureRecognizer(target: self, action: #selector(self.rightSwiped(_:)) )
        right.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(right)
        
        
        let left = UISwipeGestureRecognizer(target: self, action: #selector(self.leftSwiped(_:)) )
        left.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(left)
        super.viewDidLoad()
    }
    
    func rightSwiped(recognizer: UISwipeGestureRecognizer){
        print("Right Swiped")
        if i < gallery.count && i > 0 {
            i = i - 1
            imageGallery.image = gallery[i]
            
        }
        
        
    }
    
    
    func leftSwiped(recognizer: UISwipeGestureRecognizer)
    {
        print("Left Swiped")
        var a = gallery.count - 1
        if i < a {
            i = i + 1
            imageGallery.image = gallery[i]
            
            
        }
        
    }
    
    

}
