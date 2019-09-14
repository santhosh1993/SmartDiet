//
//  MealDetailProtocol.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import Foundation

protocol MealDetailProtocol {
    func getTitle() -> String
    func getIsVeg() -> Bool
    func getPrice() -> String
    func getNumberOfSections() -> Int
    func getThumbnailURL() -> String
    func getNumberOfRowsInASection(_ index: Int) -> Int
}
