//
//  CellCharts.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit
import Charts

final class CellCharts: UICollectionViewCell {

    @IBOutlet weak var pieChart: PieChartView!
    @IBOutlet weak var protienView: NutritionIndicator!
    @IBOutlet weak var fatView: NutritionIndicator!
    @IBOutlet weak var carbsView: NutritionIndicator!
    @IBOutlet weak var fibre: NutritionIndicator!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
