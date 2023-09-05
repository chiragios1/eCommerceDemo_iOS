//
//  SearchProductVC+API.swift
//  eCommerceDemo
//
//  Created by admin on 05/09/23.
//

import Foundation
extension SearchProductVC {
    
    func getRequestBody()  -> [String: Any] {
        
        return [
            "sortBy": "fitScore",
            "pageSize": 6,
            "pageFrom": 0,
            "criteria": [
                "measurements": [
                    "height": 700,
                    "bust": 540
                ]
            ],
            "filters": [
                "productCategory": "tops",
                "storeIds": [535],
                "gender": "female"
            ] as [String : Any]
        ]
        
    }
}
