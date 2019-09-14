//
//  BookAMealNetwiorkHandler.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import Foundation

class BookAMealNetWorkHandler: BookAMealNetWorkHandlerProtocol {
    
    func getData(_ completionHandler: @escaping ((Any?, Error?) -> Void)) {
        let url = URL(string: URLs.GET_FOOD_LIST)
        guard let unWrappedUrl = url else { completionHandler(nil, Errors.inValidURL); return}
        let urlRequest = URLRequest(url: unWrappedUrl)
        NetWorking.commonServiceCall(urlRequest: urlRequest) {(response, error) in
            completionHandler(response, error)
        }
    }
}
