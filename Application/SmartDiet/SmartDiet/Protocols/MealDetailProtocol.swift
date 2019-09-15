//
//  MealDetailProtocol.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import CoreGraphics
import Foundation

protocol MealDetailProtocol {
    func getTitle() -> String
    func getIsVeg() -> Bool
    func getPrice() -> String
    func getDescription() -> NSMutableAttributedString
    func getNumberOfSections() -> Int
    func getThumbnailURL() -> String
    func getNumberOfRowsInASection(_ index: Int) -> Int
    func getHeightofDescCell() -> CGFloat
    func getChartsData() -> ([String], [Int])
    func getProtein() -> Int
    func getFat() -> Int
    func getCarbs() -> Int
    func getFiber() -> Int

}
