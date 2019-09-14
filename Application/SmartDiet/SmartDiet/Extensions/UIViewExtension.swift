//
//  UIViewExtension.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

extension UIView {
    
    func getViewFromXibAndAddItAsSubView() -> UIView? {
        let viewFromXib = Bundle.main.loadNibNamed(String(describing: self), owner: self, options: nil)
        guard let arrayUnwrapped = viewFromXib,
         arrayUnwrapped.count > 0,
            let unWrappedView = arrayUnwrapped[0] as? UIView else { return nil }
        return unWrappedView
    }
}
