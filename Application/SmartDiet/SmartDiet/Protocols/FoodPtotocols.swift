//
//  FoodModelProtocol.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

enum FoodType: String {
    case veg
    case nonVeg
}
protocol FoodItemProtocol {
    var itemName: String { get set }
    var foodType: FoodType { get set }
}
protocol FoodModelProtocol {
    var foodItem: FoodItemProtocol { get }
    var calories: Int32 { get }
    var price: Int32 { get }
    var thumbnailUrl: String { get }
    func getPrice() -> String
    func getCaleroies() -> String
    func getThumbnailUrl() -> URL?
}
