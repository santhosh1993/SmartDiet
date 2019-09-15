//
//  CellDescription.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 15/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

final class CellDescription: UICollectionViewCell {

    //IBOutlets
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var constraintHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setDescription(_ desc: NSMutableAttributedString) {
        
        self.labelDescription.attributedText = desc
        let width = UIScreen.main.bounds.size.width
        let heightForLabel = UILabel.heightForView(text: desc, font: UIFont(name: FontNames.HiraginoSansW3, size: 14)!, width: width - 20)
        constraintHeight.constant = heightForLabel
    }
    
}
