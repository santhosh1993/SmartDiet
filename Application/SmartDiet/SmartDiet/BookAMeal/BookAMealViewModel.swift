//
//  BookAMealViewModel.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import Foundation

final class BookAMealViewModel: BooAMealDataSource {
    func getFood(_ index: Int) -> FoodModelProtocol {
        return arrayOfMeals[index]
    }
    
    
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
    func getData() {
        self.dataHandler.getData { [unowned self] (data, error) in
            guard error == nil, let arrData = data as? [[String: Any]]  else { self.uplodaData?(); return}
            self.arrayOfMeals.removeAll()
            _ = arrData.map { [unowned self] value in
                let jsonData = try? JSONSerialization.data(withJSONObject: value, options: .prettyPrinted)
                guard let unWeappedData = jsonData else { return }
                do {
                    let model = try JSONDecoder().decode(FoodModel.self, from: unWeappedData)
                    self.arrayOfMeals.append(model)
                } catch {}
            }
            
        }
    }
    func getCount() -> Int { return arrayOfMeals.count }
    
    func getImageThubnail(_ index: Int) -> URL? { return arrayOfMeals[index].getThumbnailUrl() }
    
    func getIsVegAndTItle(_ index: Int) -> (Bool, String) {
        let itemAtIndex = arrayOfMeals[index]
        return (itemAtIndex.is_veg, itemAtIndex.name)
    }
    func getCaleroies(_ index: Int) -> String { return arrayOfMeals[index].getCaleroies() }
    
    func getPrice(_ index: Int) -> String { return arrayOfMeals[index].getPrice() }
}

