//
//  ViewController.swift
//  ZKTwitterBarAnimation
//
//  Created by Zach on 08/07/2016.
//  Copyright (c) 2016 Zach. All rights reserved.
//

import UIKit
import ZKTwitterBarAnimation

class ViewController: UIViewController {
    
    let image = UIImage(named: "twitter")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func noneAction(sender: AnyObject) {
        if let tbc = self.tabBarController as? ZKTabBarController {
            tbc.show("This has no animation!", withType: ZKAlertType.None, image: image)
        }
    }
    
    @IBAction func bounceAction(sender: AnyObject) {
        if let tbc = self.tabBarController as? ZKTabBarController {
            tbc.show("This is bounce animation!", withType: .Bounce, image: image)
        }
    }
    
    @IBAction func normalAction(sender: AnyObject) {
        if let tbc = self.tabBarController as? ZKTabBarController {
            tbc.show("This is a normal animation", withType: nil, image: image)
        }
    }
}

