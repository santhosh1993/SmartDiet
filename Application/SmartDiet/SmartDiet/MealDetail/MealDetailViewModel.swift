//
//  MealDetailViewMode.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

class MealDetailViewModel: MealDetailProtocol {    
    
    var data: [String: Any] = [: ]
    
    init(_ data: [String: Any]) {
        self.data = data
    }
    func getNumberOfSections() -> Int { return 3 }
    
    func getNumberOfRowsInASection(_ index: Int) -> Int { return 1 }
    
    func getTitle() -> String {
        return self.data[Keys.name] as? String ?? EMPTY_STRING
    }
    
    func getIsVeg() -> Bool {
        return self.data[Keys.isVeg] as? Bool ?? false
    }
    
    func getPrice() -> String {
        let price = self.data[Keys.price] as? String ?? EMPTY_STRING
        return "₹\(price)"
    }
    
    func getThumbnailURL() -> String {
        return self.data[Keys.imageUrl] as? String ?? EMPTY_STRING
    }
    func getProtein() -> Int {
        return self.data[Keys.protein] as? Int ?? 0
    }
    func getFat() -> Int {
        return self.data[Keys.fat] as? Int ?? 0
    }
    func getCarbs() -> Int {
        return self.data[Keys.carbs] as? Int ?? 0
    }
    func getFiber() -> Int {
        return self.data[Keys.fiber] as? Int ?? 0
    }

    func getDescription() -> NSMutableAttributedString {
        let desc = self.data[Keys.desc] as? String ?? EMPTY_STRING
        let attrString = NSMutableAttributedString(string: desc)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        attrString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        return attrString
    }
    func getHeightofDescCell() -> CGFloat {
        let width = UIScreen.main.bounds.size.width
        let heightForLabel = UILabel.heightForView(text: self.getDescription(), font: UIFont(name: FontNames.HiraginoSansW3, size: 14)!, width: width - 20)
        return 10 + 30 + 10 + 34 + 10 + heightForLabel + 10
    }
    func getChartsData() -> ([String], [Int]) {
        return ([Constants.protien, Constants.fat, Constants.carbs, Constants.fibre],
                [getProtein(), getFat(), getCarbs(), getFiber()])
    }
    
}

