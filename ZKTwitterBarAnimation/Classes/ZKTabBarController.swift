//
//  UITViewController.swift
//  ZKTwitterBarAnimation
//
//  Created by Zachary Khan on 8/6/16.
//  Copyright © 2016 ZacharyKhan. All rights reserved.
//

import UIKit

public class ZKTabBarController: UITabBarController {

    public var buttonView : ZKAlertView!
    public var shown : Bool!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ZKTabBarController {
    public func show(message: String!, withType type: ZKAlertType?, image : UIImage!) {
        if self.shown != true {
            buttonView = ZKAlertView(frame: CGRect(x: -(self.tabBar.frame.width), y: 0, width: self.tabBar.frame.width, height: self.tabBar.frame.height), message: message, image: image)
            self.tabBar.addSubview(buttonView)
            
            self.shown = true
            
            if type == ZKAlertType.Bounce {
                UIView.animateWithDuration(0.85, delay: 0, usingSpringWithDamping: 0.65, initialSpringVelocity: 0.5, options: .CurveEaseOut, animations: {
                    self.buttonView.frame.origin.x += self.buttonView.frame.width
                    }, completion: nil)
            } else if type == ZKAlertType.None {
                buttonView.alpha = 1
                buttonView.frame.origin.x += buttonView.frame.width
                
            } else {
                UIView.animateWithDuration(0.9) {
                    self.buttonView.frame.origin.x += self.buttonView.frame.width
                }
            }
            
            self.hide()
        }
    }
    
    private func hide() {
        UIView.animateWithDuration(1.25, delay: 3.0, options: .CurveEaseIn, animations: { 
            self.buttonView.alpha = 0
            }) { (value) in
                self.buttonView.removeFromSuperview()
                self.shown = false
        }
    }
}
