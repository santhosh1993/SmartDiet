//
//  SDFoodName.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

final class SDFoodName: UIView {
    
    //IBOutlets
    
    @IBOutlet weak var labelFoodName: UILabel!
    @IBOutlet weak var imageVegOrNonveg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let viewFromXib =  self.getViewFromXibAndAddItAsSubView()
        if let unWrappedView = viewFromXib { self.addSubview(unWrappedView) }
    }
    
}
