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
    func getColors() -> [NSUIColor] {
        let colorProtien = NSUIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 66.0/255.0, alpha: 1)
        let colorFat = NSUIColor(red: 35.0/255.0, green: 100.0/255.0, blue: 57.0/255.0, alpha: 1)
        let colorCarbs = NSUIColor(red: 337.0/255.0, green: 86.0/255.0, blue: 69.0/255.0, alpha: 1)
        let colorFibre = NSUIColor(red: 274.0/255.0, green: 29.0/255.0, blue: 55.0/255.0, alpha: 1)
        return [colorProtien, colorFat, colorCarbs, colorFibre]
    }
    func setUpData(_ titles: [String], points: [Int]) {
        var dataEntries: [ChartDataEntry] = []
        _ = titles.enumerated().map { index, value in
            let dataEntry = PieChartDataEntry(value: Double(points[index]), label: value)
            dataEntries.append(dataEntry)
        }
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: nil)
        pieChartDataSet.colors = getColors()
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        let numFormatter = NumberFormatter()
        numFormatter.numberStyle = .none
        let defFormatter = DefaultValueFormatter(formatter: numFormatter)
        pieChartData.setValueFormatter(defFormatter)
        pieChart.data = pieChartData
        self.setUpColorsAndTitlesForNutritionViews()
    }
    private func setUpColorsAndTitlesForNutritionViews() {
        protienView.setUpData(UIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 66.0/255.0, alpha: 1), title: Constants.protien)
        fatView.setUpData(UIColor(red: 35.0/255.0, green: 100.0/255.0, blue: 57.0/255.0, alpha: 1), title: Constants.fat)
        carbsView.setUpData(UIColor(red: 337.0/255.0, green: 86.0/255.0, blue: 69.0/255.0, alpha: 1), title: Constants.protien)
        fibre.setUpData(UIColor(red: 274.0/255.0, green: 29.0/255.0, blue: 55.0/255.0, alpha: 1), title: Constants.fibre)

        
    }
}
