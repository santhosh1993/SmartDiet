//
//  SelectFoodCell.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

final class SelectFoodCell: UICollectionViewCell {

    // IBoutlets
    @IBOutlet weak var imageViewThumbnail: UIImage!
    @IBOutlet weak var viewFoodName: UILabel!
    @IBOutlet weak var labelCalories: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
