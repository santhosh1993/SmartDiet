//
//  BookAMealViewModel.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import Foundation

final class BookAMealViewModel: BooAMealDataSource {
    
    var uplodaData: (() -> ())?
    
    var arrayOfMeals: [FoodModelProtocol] = [] {
        didSet {
            self.uplodaData?()
        }
    }
    var dataHandler: BookAMealNetWorkHandlerProtocol
    
    init(_ bookAMealsDatahandler: BookAMealNetWorkHandlerProtocol) {
        self.dataHandler = bookAMealsDatahandler
    }
    
    func getCount() -> Int { return arrayOfMeals.count }
    
    func getImageThubnail(_ index: Int) -> URL? { return arrayOfMeals[index].getThumbnailUrl() }
    
    func getIsVegAndTItle(_ index: Int) -> (Bool, String) {
        let itemAtIndex = arrayOfMeals[index]
        let isVeg = itemAtIndex.foodItem.foodType == .veg
        return (isVeg, itemAtIndex.foodItem.itemName)
    }
    func getCaleroies(_ index: Int) -> String { return arrayOfMeals[index].getCaleroies() }
    
    func getPrice(_ index: Int) -> String { return arrayOfMeals[index].getPrice() }
}

