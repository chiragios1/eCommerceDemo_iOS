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



import Foundation

// MARK: - SearchRequest
struct SearchRequest: Codable {
    var criteria         : Criteria?        = Criteria()
    var filters          : Filters?         = Filters()
    var storeProductId   : Int?             = nil
    var pageFrom         : Int?             = nil
    var pageSize         : Int?             = nil
    var collapseVariants : Bool?            = nil
    var sortBy           : String?          = nil
    var customEsWeights: [String: Int]? = [:]

    enum CodingKeys: String, CodingKey {
        case criteria
        case filters
        case storeProductId
        case pageFrom
        case pageSize
        case collapseVariants
        case sortBy
        case customEsWeights
    }
    init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: CodingKeys.self)

      criteria         = try values.decodeIfPresent(Criteria.self        , forKey: .criteria         )
      filters          = try values.decodeIfPresent(Filters.self         , forKey: .filters          )
      storeProductId   = try values.decodeIfPresent(Int.self             , forKey: .storeProductId   )
      pageFrom         = try values.decodeIfPresent(Int.self             , forKey: .pageFrom         )
      pageSize         = try values.decodeIfPresent(Int.self             , forKey: .pageSize         )
      collapseVariants = try values.decodeIfPresent(Bool.self            , forKey: .collapseVariants )
      sortBy           = try values.decodeIfPresent(String.self          , forKey: .sortBy           )
      customEsWeights  = try values.decodeIfPresent([String: Int].self , forKey: .customEsWeights  )
   
    }
    init() {

    }
}

// MARK: - Criteria
struct Criteria: Codable {
    var bodyData                : BodyData?     = BodyData()
    var measurements            : BodyData? = BodyData()
    var search                  : String?       = nil
    var productName             : String?       = nil
    var color                   : String?       = nil
    var brand                   : String?       = nil
    var fit                     : String?       = nil
    var type                    : String?       = nil
    var materials               : BodyData?    = BodyData()
    var waistType               : String?       = nil
    var bottomsType             : String?       = nil
    var bottomsFit              : String?       = nil
    var bottomsLength           : String?       = nil
    var necklineType            : String?       = nil
    var topsFit                 : String?       = nil
    var topsLength              : String?       = nil
    var tankType                : String?       = nil
    var sleeveLength            : String?       = nil
    var sleeveType              : String?       = nil
    var skirtLength             : String?       = nil
    var skirtType               : String?       = nil
    var overclothesClosure      : String?       = nil
    var overclothesNecklineType : String?       = nil
    var overclothesType         : String?       = nil
    var category                : String?       = nil
    var pattern                 : String?       = nil
    var style                   : String?       = nil
    var occasion                : String?       = nil

    enum CodingKeys: String, CodingKey {
        case bodyData
        case measurements
        case search
        case productName
        case color
        case brand
        case fit
        case type
        case materials
        case waistType
        case bottomsType
        case bottomsFit
        case bottomsLength
        case necklineType
        case topsFit
        case topsLength
        case tankType
        case sleeveLength
        case sleeveType
        case skirtLength
        case skirtType
        case overclothesClosure
        case overclothesNecklineType
        case overclothesType
        case category
        case pattern
        case style
        case occasion
    }
    init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: CodingKeys.self)

      bodyData                = try values.decodeIfPresent(BodyData.self     , forKey: .bodyData                )
      measurements            = try values.decodeIfPresent(BodyData.self , forKey: .measurements            )
      search                  = try values.decodeIfPresent(String.self       , forKey: .search                  )
      productName             = try values.decodeIfPresent(String.self       , forKey: .productName             )
      color                   = try values.decodeIfPresent(String.self       , forKey: .color                   )
      brand                   = try values.decodeIfPresent(String.self       , forKey: .brand                   )
      fit                     = try values.decodeIfPresent(String.self       , forKey: .fit                     )
      type                    = try values.decodeIfPresent(String.self       , forKey: .type                    )
      materials               = try values.decodeIfPresent(BodyData.self    , forKey: .materials               )
      waistType               = try values.decodeIfPresent(String.self       , forKey: .waistType               )
      bottomsType             = try values.decodeIfPresent(String.self       , forKey: .bottomsType             )
      bottomsFit              = try values.decodeIfPresent(String.self       , forKey: .bottomsFit              )
      bottomsLength           = try values.decodeIfPresent(String.self       , forKey: .bottomsLength           )
      necklineType            = try values.decodeIfPresent(String.self       , forKey: .necklineType            )
      topsFit                 = try values.decodeIfPresent(String.self       , forKey: .topsFit                 )
      topsLength              = try values.decodeIfPresent(String.self       , forKey: .topsLength              )
      tankType                = try values.decodeIfPresent(String.self       , forKey: .tankType                )
      sleeveLength            = try values.decodeIfPresent(String.self       , forKey: .sleeveLength            )
      sleeveType              = try values.decodeIfPresent(String.self       , forKey: .sleeveType              )
      skirtLength             = try values.decodeIfPresent(String.self       , forKey: .skirtLength             )
      skirtType               = try values.decodeIfPresent(String.self       , forKey: .skirtType               )
      overclothesClosure      = try values.decodeIfPresent(String.self       , forKey: .overclothesClosure      )
      overclothesNecklineType = try values.decodeIfPresent(String.self       , forKey: .overclothesNecklineType )
      overclothesType         = try values.decodeIfPresent(String.self       , forKey: .overclothesType         )
      category                = try values.decodeIfPresent(String.self       , forKey: .category                )
      pattern                 = try values.decodeIfPresent(String.self       , forKey: .pattern                 )
      style                   = try values.decodeIfPresent(String.self       , forKey: .style                   )
      occasion                = try values.decodeIfPresent(String.self       , forKey: .occasion                )
   
    }
    init() {

    }
}

// MARK: - BodyData
struct BodyData: Codable {
}

struct Filters: Codable {

  var productTypeId   : Int?          = nil
  var productCategory : String?       = nil
  var genders         : [String]?     = []
  var storeIds        : [Int]?        = []
  var colors          : [String]?     = []
  var brands          : [String]?     = []
  var fits            : [String]?     = []
  var types           : [String]?     = []
  var materials       : [String]?     = []
  var styles          : [String]?     = []
  var discount        : BodyData?     = BodyData()
  var occasions       : [String]?     = []
  var minPrice        : Int?          = nil
  var maxPrice        : Int?          = nil
  var measurements    : BodyData? = BodyData()
  var attributes      : Attributes?   = Attributes()

  enum CodingKeys: String, CodingKey {

    case productTypeId   = "productTypeId"
    case productCategory = "productCategory"
    case genders         = "genders"
    case storeIds        = "storeIds"
    case colors          = "colors"
    case brands          = "brands"
    case fits            = "fits"
    case types           = "types"
    case materials       = "materials"
    case styles          = "styles"
    case discount        = "discount"
    case occasions       = "occasions"
    case minPrice        = "minPrice"
    case maxPrice        = "maxPrice"
    case measurements    = "measurements"
    case attributes      = "attributes"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    productTypeId   = try values.decodeIfPresent(Int.self          , forKey: .productTypeId   )
    productCategory = try values.decodeIfPresent(String.self       , forKey: .productCategory )
    genders         = try values.decodeIfPresent([String].self     , forKey: .genders         )
    storeIds        = try values.decodeIfPresent([Int].self        , forKey: .storeIds        )
    colors          = try values.decodeIfPresent([String].self     , forKey: .colors          )
    brands          = try values.decodeIfPresent([String].self     , forKey: .brands          )
    fits            = try values.decodeIfPresent([String].self     , forKey: .fits            )
    types           = try values.decodeIfPresent([String].self     , forKey: .types           )
    materials       = try values.decodeIfPresent([String].self     , forKey: .materials       )
    styles          = try values.decodeIfPresent([String].self     , forKey: .styles          )
    discount        = try values.decodeIfPresent(BodyData.self     , forKey: .discount        )
    occasions       = try values.decodeIfPresent([String].self     , forKey: .occasions       )
    minPrice        = try values.decodeIfPresent(Int.self          , forKey: .minPrice        )
    maxPrice        = try values.decodeIfPresent(Int.self          , forKey: .maxPrice        )
    measurements    = try values.decodeIfPresent(BodyData.self , forKey: .measurements    )
    attributes      = try values.decodeIfPresent(Attributes.self   , forKey: .attributes      )
 
  }
    init() {

    }
  

}

// MARK: - Attributes
struct Attributes: Codable {

  var bottomsLength : [String]? = []
  var necklineType  : [String]? = []
  var skirtLength   : [String]? = []
  var sleeveLength  : [String]? = []
  var sleeveType    : [String]? = []
  var topsLength    : [String]? = []

  enum CodingKeys: String, CodingKey {

    case bottomsLength = "bottoms_length"
    case necklineType  = "neckline_type"
    case skirtLength   = "skirt_length"
    case sleeveLength  = "sleeve_length"
    case sleeveType    = "sleeve_type"
    case topsLength    = "tops_length"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    bottomsLength = try values.decodeIfPresent([String].self , forKey: .bottomsLength )
    necklineType  = try values.decodeIfPresent([String].self , forKey: .necklineType  )
    skirtLength   = try values.decodeIfPresent([String].self , forKey: .skirtLength   )
    sleeveLength  = try values.decodeIfPresent([String].self , forKey: .sleeveLength  )
    sleeveType    = try values.decodeIfPresent([String].self , forKey: .sleeveType    )
    topsLength    = try values.decodeIfPresent([String].self , forKey: .topsLength    )
 
  }

  init() {

  }

}
