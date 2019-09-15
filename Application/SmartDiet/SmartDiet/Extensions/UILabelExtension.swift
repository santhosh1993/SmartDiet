//
//  UILabelExtension.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 15/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

extension UILabel {
   static func heightForView(text: NSMutableAttributedString, font: UIFont, width: CGFloat) -> CGFloat {
        
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.attributedText = text
        label.sizeToFit()
        return label.frame.height
    }
}
