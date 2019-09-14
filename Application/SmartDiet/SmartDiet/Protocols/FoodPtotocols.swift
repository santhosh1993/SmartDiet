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
    var foodItem: FoodItemProtocol { get set }
    var calories: Int32 { get set }
    var price: Int32 { get set }
    func getPrice() -> String
    func getCaleroies() -> String
}
protocol FoodCellProtocol {
    var imageViewThumbnail: UIImageView!{ get }
    var viewFoodName: FoodTypeView! { get }
    var labelCalories: UILabel! { get }
    var labelPrice: UILabel! { get }
    func buttonActionAdd(_ sender: UIButton)
}
protocol FoodTypeProtocol {
    var labelFoodName: UILabel! { get }
    var imageVegOrNonveg: UIImageView! { get }
}
