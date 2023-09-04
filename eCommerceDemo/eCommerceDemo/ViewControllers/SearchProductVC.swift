//
//  SearchProductVC.swift
//  eCommerceDemo
//
//  Created by admin on 04/09/23.
//

import UIKit
import Kingfisher
class SearchProductVC: UIViewController {

    @IBOutlet weak var colViewProduct: UICollectionView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    var hitsArray  = [Hit]()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        colViewProduct.register(UINib(nibName: CellId.ProductCollectionViewCell, bundle: .main), forCellWithReuseIdentifier: CellId.ProductCollectionViewCell)
        indicator.startAnimating()
        self.SearchProduct(autoPopulateString: "")
        // Do any additional setup after loading the view.
    }
     
    func SearchProduct(autoPopulateString: String){
        
//        let aRequestSearchBody = SearchRequest(criteria: Criteria(bodyData: nil, measurements: nil, search: autoPopulateString, productName: nil, color: nil, brand: nil, fit: nil, type: nil, materials: nil, waistType: nil, bottomsType: nil, bottomsFit: nil, bottomsLength: nil, necklineType: nil, topsFit: nil, topsLength: nil, tankType: nil, sleeveLength: nil, sleeveType: nil, skirtLength: nil, skirtType: nil, overclothesClosure: nil, overclothesNecklineType: nil, overclothesType: nil, category: nil, pattern: nil, style: nil, occasion: nil), filters: nil, storeProductId: nil, pageFrom: 0, pageSize: 6, collapseVariants: false, sortBy: nil, customEsWeights: nil)
        
       
        let aRequestSearchBody: [String: Any] = [
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
        
        
        
       
        ApiServicesCommon.PostURL(url: "\(APIURL.search)?with_metas=true", dict: aRequestSearchBody) { [self] responceData, success, error in
            DispatchQueue.main.async {
                self.indicator.stopAnimating()
            }
           
            if success   {
                
                if let hitsData = responceData["hits"] as? NSArray
                {
                    
                        do {
                            let jsonData = try JSONSerialization.data(withJSONObject: hitsData, options: .prettyPrinted)
                            let reqJSONStr = String(data: jsonData, encoding: .utf8)
                            let data = reqJSONStr?.data(using: .utf8)
                            let jsonDecoder = JSONDecoder()
                            let aHits = try jsonDecoder.decode([Hit].self, from: data!)
                            hitsArray = aHits
                            DispatchQueue.main.async {
                                self.colViewProduct.reloadData()
                            }
                           
                         
     
                            
                        }
                        catch {
                            print(error)
                        }
                        
                    
                    
                }
            }
            
           
            
            
            
        }
                
         
        
        
        
    }
  

}
extension SearchProductVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hitsArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let aCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellId.ProductCollectionViewCell, for: indexPath)  as!  ProductCollectionViewCell
        aCell.lblProductName.text = hitsArray[indexPath.row].productName
        aCell.lblBrand.text = hitsArray[indexPath.row].brand
        aCell.lblRecommandedSize.text = hitsArray[indexPath.row].sizeName
        
       
        aCell.lblPrice.text = "¥ \(hitsArray[indexPath.row].price ?? 0)"
        aCell.lblSizeRange.text = "Size Range: \(hitsArray[indexPath.row].availableSizes?.joined(separator: ",") ?? "")"
        aCell.imgViewProduct.kf.setImage(with: URL(string: hitsArray[indexPath.row].imageUrl!))
      
        return aCell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.width / 2) - 15 , height: 340)
    }
}
