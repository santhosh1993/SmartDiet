//
//  CellWithImage.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit
import SDWebImage

final class CellWithImage: UICollectionViewCell {

    //IBOutlet
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var overlayView: UIView!
    func setThumbnailImage(_ urlString: String) {
        let url = URL(string: urlString)
        self.imgView.sd_setImage(with: url, completed: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let gradient = CAGradientLayer()
        
        gradient.frame = CGRect(x: 0, y: 200, width:UIScreen.main.bounds.width, height: 50)
        
        gradient.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        
        gradient.locations = [0.0, 1.0]
        
        overlayView.layer.insertSublayer(gradient, at: 0)
        
        
        
        imgView.bringSubviewToFront(overlayView)
    }
}
