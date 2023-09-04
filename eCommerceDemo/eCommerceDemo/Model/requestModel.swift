//
//  requestModel.swift
//  eCommerceDemo
//
//  Created by admin on 04/09/23.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let searchRequest = try? JSONDecoder().decode(SearchRequest.self, from: jsonData)



// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let searchRequest = try? JSONDecoder().decode(SearchRequest.self, from: jsonData)

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let hits = try? JSONDecoder().decode(Hits.self, from: jsonData)

import Foundation

// MARK: - Hits
struct Products: Codable {
    let hits: [Hit]?
    let totalHits: Int?
    let distinctBrands: Int?

    enum CodingKeys: String, CodingKey {
        case hits
        case totalHits
        case distinctBrands
    }
}

// MARK: - Hit
struct Hit: Codable {
    let availableSizes: [String]?
    let bottomsFit: String?
    let bottomsLength: String?
    let bottomsType: String?
    let brand: String?
    let brandHash: String?
    let category: String?
    let cloudinaryPublicId: String?
    let color: String?
    let currency: String?
    let discount: Int?
    let esScore: Int?
    let externalProductId: String?
    let fit: String?
    let gender: String?
    let imageUrl: String?
    let materials: String?
    let necklineType: String?
    let occasion: String?
    let originalBrand: String?
    let originalColor: String?
    let originalPrice: Int?
    let others: Others?
    let overclothesClosure: String?
    let overclothesNecklineType: String?
    let overclothesType: String?
    let pattern: String?
    let price: Int?
    let productName: String?
    let productTypeId: Int?
    let productTypeName: String?
    let sizeMeasurements: Others?
    let sizeName: String?
    let skirtLength: String?
    let skirtType: String?
    let sku: String?
    let sleeveLength: String?
    let sleeveType: String?
    let storeId: Int?
    let storeName: String?
    let storeProductId: Int?
    let style: String?
    let tankType: String?
    let topsFit: String?
    let topsLength: String?
    let type: String?
    let url: String?
    let virtualItem: Others?
    let waistType: String?

    enum CodingKeys: String, CodingKey {
        case availableSizes
        case bottomsFit
        case bottomsLength
        case bottomsType
        case brand
        case brandHash
        case category
        case cloudinaryPublicId
        case color
        case currency
        case discount
        case esScore
        case externalProductId
        case fit
        case gender
        case imageUrl
        case materials
        case necklineType
        case occasion
        case originalBrand
        case originalColor
        case originalPrice
        case others
        case overclothesClosure
        case overclothesNecklineType
        case overclothesType
        case pattern
        case price
        case productName
        case productTypeId
        case productTypeName
        case sizeMeasurements
        case sizeName
        case skirtLength
        case skirtType
        case sku
        case sleeveLength
        case sleeveType
        case storeId
        case storeName
        case storeProductId
        case style
        case tankType
        case topsFit
        case topsLength
        case type
        case url
        case virtualItem
        case waistType
    }
}

// MARK: - Others
struct Others: Codable {
}
