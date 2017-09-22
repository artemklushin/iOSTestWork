//
//  RoundedButton.swift
//  iOSTestWork
//
//  Created by Artem Klushin on 22.09.17.
//  Copyright © 2017 TheGreatCompany. All rights reserved.
//

import UIKit

public class RoundedButton : UIButton
{
    @IBInspectable public var BorderColor: UIColor = UIColor.clear
        {
        didSet
        {
            self.layer.borderColor = BorderColor.cgColor;
        }
    }
    
    @IBInspectable public var BorderWidth: CGFloat = 0.0
        {
        didSet
        {
            self.layer.borderWidth = BorderWidth;
        }
    }
    
    @IBInspectable public var BorderRadius: CGFloat = 0.0
    
    override public func layoutSubviews()
    {
        super.layoutSubviews()
        
        self.layer.cornerRadius = self.BorderRadius;
        self.layer.masksToBounds = true
    }
}
