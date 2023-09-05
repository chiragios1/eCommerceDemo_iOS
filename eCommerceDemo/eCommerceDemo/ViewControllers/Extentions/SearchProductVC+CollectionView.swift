//
//  SearchProductVC+Collection.swift
//  eCommerceDemo
//
//  Created by admin on 05/09/23.
//

import Foundation
import UIKit

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
