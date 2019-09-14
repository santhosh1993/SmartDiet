//
//  FoodModel.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import Foundation

struct FoodModel: FoodModelProtocol {
    
    var calories: Int32
    var foodItem: FoodItemProtocol
    var price: Int32
    
    func getPrice() -> String {
        return "\(self.price)"
    }
    func getCaleroies() -> String {
        return "\(self.calories)"
    }
}
