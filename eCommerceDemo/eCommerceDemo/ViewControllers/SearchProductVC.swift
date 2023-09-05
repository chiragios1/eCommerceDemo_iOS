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
        self.SearchProduct()
        // Do any additional setup after loading the view.
    }
     
    func SearchProduct(){

        let aRequestSearchBody = getRequestBody()
        
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
                            displayAlert(title: AlertTitleMessage.Alert_Title, message: error.localizedDescription, completion: nil)
                            print(error)
                        }
                }
                else{
                    displayAlert(title: AlertTitleMessage.Alert_Title, message: AlertTitleMessage.NoProductFound, completion: nil)
                }
            } else {
                
                displayAlert(title: AlertTitleMessage.Alert_Title, message: error.localizedDescription, completion: nil)
            }
        }
    }
}





