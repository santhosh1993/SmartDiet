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
extension UIViewController {
    func displaySpinner(onView : UIView) -> UIView {
        let spinnerView = UIView.init(frame: onView.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let ai = UIActivityIndicatorView.init(style: .whiteLarge)
        ai.startAnimating()
        ai.center = spinnerView.center
        
        DispatchQueue.main.async {
            spinnerView.addSubview(ai)
            onView.addSubview(spinnerView)
        }
        
        return spinnerView
    }
    
    func removeSpinner(spinner :UIView) {
        DispatchQueue.main.async {
            spinner.removeFromSuperview()
        }
    }
}
