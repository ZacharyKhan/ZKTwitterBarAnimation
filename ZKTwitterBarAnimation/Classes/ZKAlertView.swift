//
//  ZKAlertButtonView.swift
//  ZKTwitterBarAnimation
//
//  Created by Zachary Khan on 8/6/16.
//  Copyright © 2016 ZacharyKhan. All rights reserved.
//

import UIKit

public class ZKAlertView: UILabel {
    
    var color : UIColor = UIColor(red:0.00, green:0.52, blue:0.70, alpha:1.0)
    
    public init(frame : CGRect, message: String!, image: UIImage!) {
        super.init(frame: CGRect(x: Int(-frame.width), y: Int(frame.origin.y), width: Int(frame.width), height: Int(frame.height)))
        self.backgroundColor = color
        self.text = message
        self.textColor = UIColor.whiteColor()
        self.textAlignment = .Left
        self.font = UIFont(name: "Helvetica", size: 14.0)
        
        let imageView = UIImageView()
        imageView.image = image
        imageView.backgroundColor = UIColor.clearColor()
        imageView.frame = CGRect(x: 10, y: frame.height/4, width: 25, height: 25)
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.bounds.width/2
        self.addSubview(imageView)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let topInset = CGFloat(0), bottomInset = CGFloat(0), leftInset = CGFloat(45.0), rightInset = CGFloat(0)
    
    override public func drawTextInRect(rect: CGRect) {
        let insets: UIEdgeInsets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawTextInRect(UIEdgeInsetsInsetRect(rect, insets))
    }
    
    override public func intrinsicContentSize() -> CGSize {
        var intrinsicSuperViewContentSize = super.intrinsicContentSize()
        intrinsicSuperViewContentSize.height += topInset + bottomInset
        intrinsicSuperViewContentSize.width += leftInset + rightInset
        return intrinsicSuperViewContentSize
    }
}
