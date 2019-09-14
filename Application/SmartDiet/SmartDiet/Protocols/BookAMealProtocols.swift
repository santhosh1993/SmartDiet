//
//  BookAMealProtocols.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import Foundation

protocol BookAMealNetWorkHandlerProtocol {
  func getData(_ completionHandler: @escaping ((Any?, Error?) -> Void))
}
protocol BooAMealDataSource {
    init(_ bookAMealsDatahandler: BookAMealNetWorkHandlerProtocol)
    var arrayOfMeals: [FoodModelProtocol] { get }
    var uplodaData: (() -> ())? { get set }
    func getData()
    func getCount() -> Int
    func getImageThubnail(_ index: Int) -> URL?
    func getIsVegAndTItle(_ index: Int) -> (Bool, String)
    func getCaleroies(_ index: Int) -> String
    func getPrice(_ index: Int) -> String
}
