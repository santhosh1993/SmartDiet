//
//  NutritionIndicator.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 15/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

final class NutritionIndicator: UIView {

    @IBOutlet weak var colorIndicator: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addViewFromXib()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.addViewFromXib()
    }
    private func addViewFromXib() {
        let view = self.getViewFromXibAndAddItAsSubView()
        if let unWrappedView = view { self.addSubview(unWrappedView) }
    }
}
