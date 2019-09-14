//
//  MealDetailCell.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

final class MealDetailCell: UICollectionViewCell {

    //IBOutlets
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var viewFoodType: FoodNameWithTypeView!
    @IBOutlet weak var buttonAdd: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonAdd.layer.borderColor = UIColor(red: 196.0/255.0, green: 196.0/255.0, blue: 196.0/255.0, alpha: 1.0).cgColor
        buttonAdd.layer.borderWidth = 1
        buttonAdd.layer.cornerRadius = 15
    }
    func setImage(_ isVeg: Bool) {
        let imageName = isVeg ? Images.veg : Images.nonVeg
        viewFoodType.imageVegOrNonveg.image = UIImage(named: imageName)
    }
    func setTitle(_ title: String) {
        viewFoodType.labelFoodName.text = title
    }
    func setPrice(_ price: String) {
        self.labelPrice.text = price
    }
}
