//
//  SelectFoodCell.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

final class SelectFoodCell: UICollectionViewCell, FoodCellProtocol {

    //MARK: IBoutlets
    
    @IBOutlet weak var imageViewThumbnail: UIImageView!
    var viewFoodName: FoodTypeView!
    @IBOutlet weak var labelCalories: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewFoodName = self.viewWithTag(100) as? FoodTypeView
    }

    //MARK: IBActions
    
    @IBAction func buttonActionAdd(_ sender: UIButton) {
        
    }
}

