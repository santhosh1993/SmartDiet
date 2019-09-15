//
//  Constants.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import Foundation

let MAIN_URL = "http://10.71.164.4:8000/"

let EMPTY_STRING = ""

struct Constants {
    static let protien = "PROTIEN"
    static let fat     = "FAT"
    static let carbs   = "CARBS"
    static let fibre   = "FIBRE"
}
struct ReuseIdentifiers {
    static let selectFoodCell = "SelectFoodCell"
    static let cellWithImage  = "CellWithImage"
    static let mealDetailCell = "MealDetailCell"
    static let cellCharts     = "CellCharts"
}
struct ControllerIds {
    static let tabBarController = "TabBarController"
    static let MealDetailController = "MealDetailController"
    static let suggestMealController = "SuggestMealController"
}
struct Colors {
    static let themeColor = "#1A9CB0"
}
struct URLs {
    static let GET_FOOD_LIST = MAIN_URL + "data/foodlist/"
}
struct Nibs {
    static let selectFoodCell = "SelectFoodCell"
    static let cellWithImage  = "CellWithImage"
    static let mealDetailCell = "MealDetailCell"
    static let cellCharts     = "CellCharts"
}
struct Images {
    static let veg = "veg"
    static let nonVeg = "nonVeg"
}
struct StoryBoardNames {
    static let Food = "Food"
}
struct Keys {
    static let price = "price"
    static let isVeg = "isVeg"
    static let name  = "name"
    static let imageUrl   = "imageUrl"
    static let desc  = "description"
    static let protein = "protein"
    static let fat     = "fat"
    static let carbs   = "carbs"
    static let fiber   = "fiber"
}
struct FontNames {
    static let HiraginoSansW3 = "Hiragino Sans W3"
}
struct AlertConstants {
    static let Alert = "Alert!"
    static let FoodOnTheWay = "Your Food Is On The Way"
    static let Ok = "OK"
}
