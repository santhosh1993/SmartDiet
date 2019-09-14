//
//  SelectFoodCell.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit
import SDWebImage

final class SelectFoodCell: UICollectionViewCell {

    //MARK: IBoutlets
    
    @IBOutlet weak var imageViewThumbnail: UIImageView!
    @IBOutlet var viewFoodName: FoodNameWithTypeView!
    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var labelCalories: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var buttonAdd: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonAdd.layer.borderColor = UIColor(red: 196.0/255.0, green: 196.0/255.0, blue: 196.0/255.0, alpha: 1.0).cgColor
        buttonAdd.layer.borderWidth = 1
        buttonAdd.layer.cornerRadius = 15
        leftView.layer.cornerRadius = 10
    }
    func setUrl(_ url: URL?) {
        self.imageViewThumbnail.sd_setImage(with: url, completed: nil)
    }
    func setUpTitleAndType(_ data: (Bool, String)) {
        let imageName = data.0 == true ? Images.veg : Images.nonVeg
        self.viewFoodName.imageVegOrNonveg.image = UIImage(named: imageName)
        self.viewFoodName.labelFoodName.text = data.1
    }
    func setPrice(_ price: String) {
        self.labelPrice.text = price
    }
    func setCalories(_ calories: String) {
        self.labelCalories.text = calories
    }
    //MARK: IBActions
 
    @IBAction func buttonActionAdd(_ sender: UIButton) {
        
    }
}

