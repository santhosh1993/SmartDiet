//
//  SDCustomButton.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

@IBDesignable

final class CustomButton: UIButton {

    @IBInspectable
    var cornerRadius: CGFloat = 0.0 {
        didSet(value){
         self.layer.cornerRadius = value
        }
    }
    @IBInspectable
    var borderWidth: CGFloat = 0.0 {
        didSet(value) {
            self.layer.borderWidth = value
        }
    }
    @IBInspectable
    var borderColor: UIColor = UIColor.clear {
        didSet(value){
            self.layer.borderColor = value.cgColor
        }
    }
}
