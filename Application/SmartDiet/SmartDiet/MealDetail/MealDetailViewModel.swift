//
//  MealDetailViewMode.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import Foundation

class MealDetailViewModel: MealDetailProtocol {    
    
    var data: [String: Any] = [: ]
    
    init(_ data: [String: Any]) {
        self.data = data
    }
    func getNumberOfSections() -> Int { return 2 }
    
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
}
