//
//  ProductCollectionViewCell.swift
//  eCommerceDemo
//
//  Created by admin on 04/09/23.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgViewProduct: UIImageView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblBrand: UILabel!
    @IBOutlet weak var lblSizeRange: UILabel!
    
    
    @IBOutlet weak var lblRecommandedSize: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
