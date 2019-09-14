//
//  FoodModel.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import Foundation

struct FoodModel: FoodModelProtocol, Codable {
    
    var food_id: Int
    var name: String
    var calories: String
    var description: String
    var is_veg: Bool
    var image_url: String
    var price: String
    var protein: Int
    var fat: Int
    var carbs: Int
    var fiber: Int

    func getPrice() -> String {
        return "₹\(self.price)"
    }
    func getCaleroies() -> String {
        return "\(self.calories) Cal"
    }
    func getThumbnailUrl() -> URL? {
        return URL(string: self.image_url)
    }
}
