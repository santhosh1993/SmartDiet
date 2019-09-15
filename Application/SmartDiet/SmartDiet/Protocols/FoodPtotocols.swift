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
protocol FoodModelProtocol {
    var food_id: Int { get }
    var name: String { get }
    var calories: String { get }
    var description: String { get }
    var is_veg: Bool { get }
    var image_url: String { get }
    var price: String { get }
    var protein: Int { get }
    var fat: Int { get }
    var carbs: Int { get }
    var fiber: Int { get }
    func getPrice() -> String
    func getCaleroies() -> String
    func getThumbnailUrl() -> URL?
}
