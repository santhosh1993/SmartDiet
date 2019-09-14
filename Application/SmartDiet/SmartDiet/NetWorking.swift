//
//  NetWorking.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import Foundation

class NetWorking {
    
    static func commonServiceCall(urlRequest: URLRequest, _ completion: @escaping ((Any?, Error?) -> ())) {
        let task =  URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard error == nil, response != nil, let unWrappedData = data else { completion(nil, error);  return }
            let resultData = try? JSONSerialization.jsonObject(with: unWrappedData, options: .allowFragments)
            completion(resultData, nil)
        }
        task.resume()
    }
}
