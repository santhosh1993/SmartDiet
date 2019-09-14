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
    
    func setThumbnailImage(_ urlString: String) {
        let url = URL(string: urlString)
        self.imgView.sd_setImage(with: url, completed: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
