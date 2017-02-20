//
//  ViewController.swift
//  SnapHomeAnimation
//
//  Created by parry on 2/20/17.
//  Copyright © 2017 parry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messages: UIButton!
    @IBOutlet weak var Oval: UIButton!
    @IBOutlet weak var miniOval: UIButton!
    @IBOutlet weak var posts: UIButton!
    
    @IBOutlet weak var messagesLeadingConstraint: NSLayoutConstraint!

    @IBOutlet weak var postsTrailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var miniOvalBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var ovalBottomConstraint: NSLayoutConstraint!
    
    var isAnimatedFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        messages.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        posts.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        Oval.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)

        miniOvalBottomConstraint.isActive = false
        miniOvalBottomConstraint = miniOval.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50)
        miniOvalBottomConstraint.isActive = true
        
        ovalBottomConstraint.isActive = false
        ovalBottomConstraint = Oval.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5)
        ovalBottomConstraint.isActive = true
        
    }


    @IBAction func onStartAnimationPressed(_ sender: Any) {
        
        func animateControls() {            
            messages.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            posts.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            Oval.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)

            
            Oval.tintColor = .white
            miniOval.tintColor = .white
            posts.tintColor = .white
            
            miniOvalBottomConstraint.isActive = false
            miniOvalBottomConstraint = miniOval.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5)
            miniOvalBottomConstraint.isActive = true
            
            ovalBottomConstraint.isActive = false
            ovalBottomConstraint = Oval.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -55)
            ovalBottomConstraint.isActive = true
            
            
            
            postsTrailingConstraint.isActive = false
            postsTrailingConstraint = posts.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
            postsTrailingConstraint.isActive = true
            
            messagesLeadingConstraint.isActive = false
            messagesLeadingConstraint = messages.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25)
            messagesLeadingConstraint.isActive = true
        }
        
        func animateControlsBack() {
            
            Oval.tintColor = .lightGray
            miniOval.tintColor = .lightGray
            posts.tintColor = .lightGray
            
            miniOvalBottomConstraint.isActive = false
            miniOvalBottomConstraint = miniOval.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50)
            miniOvalBottomConstraint.isActive = true
            
            ovalBottomConstraint.isActive = false
            ovalBottomConstraint = Oval.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5)
            ovalBottomConstraint.isActive = true
            
            
            
            postsTrailingConstraint.isActive = false
            postsTrailingConstraint = posts.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -90)
            postsTrailingConstraint.isActive = true
            
            messagesLeadingConstraint.isActive = false
            messagesLeadingConstraint = messages.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90)
            messagesLeadingConstraint.isActive = true
            
            messages.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            posts.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            Oval.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            
        }
        
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseIn, animations: {
            
            if !self.isAnimatedFlag {
                animateControls()
            }else {
                animateControlsBack()
            }
            self.view.layoutIfNeeded()
            self.isAnimatedFlag = !self.isAnimatedFlag

        }, completion: nil)
        
    }

}

