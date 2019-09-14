//
//  UIStoryBoard.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    static func getViewControllerWithId(_ nameOfStoryBoard: String, _ id: String) -> UIViewController {
        
        let vcBookAMeal = UIStoryboard(name: nameOfStoryBoard, bundle: nil).instantiateViewController(withIdentifier: id)
        return vcBookAMeal
    }
}
