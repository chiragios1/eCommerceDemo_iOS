//
//  Configurations.swift
//  eCommerceDemo
//
//  Created by admin on 04/09/23.
//

import Foundation

enum Environment: String {
    case dev = "Dev"
    case stage = "Stage"
    case release = "Release"
    
    var hostUrl:String {
        switch self {
            case .dev: return "https://product-recommendation.virtusize.jp/"
          //  case .stage: return "https://product-recommendation.virtusize.jp/search"
            case .stage: return "https://product-recommendation.virtusize.jp/"
            case .release: return "https://product-recommendation.virtusize.jp/"
        }
    }
   
}

struct Configuration {
    static var environment: Environment = {
        if let configuration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String {
            if configuration.range(of: "Dev") != nil {
                return Environment.dev
            } else if configuration.range(of: "Stage") != nil {
                return Environment.stage
            }
        }
        return Environment.release
    }()
}
