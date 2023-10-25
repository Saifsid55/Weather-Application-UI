//
//  bottomWheatherCvc.swift
//  Wheather Application
//
//  Created by Mohd Saif on 18/10/23.
//

import UIKit

class bottomWheatherCvc: UICollectionViewCell {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var detailtLabelOne: UILabel!
    
    @IBOutlet weak var detailLabelTwo: UILabel!
    
    @IBOutlet weak var detailLabelTwosmaller: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(hexString: "#E7EBEE")
        // Initialization code
    }

    
    func setView(labelOneText: String, labelTwoText: String, imagename: String,dltwo: String) {
        
        detailtLabelOne.text = labelOneText
        detailLabelTwo.text = labelTwoText
        imageView.image = UIImage(named: imagename)
        detailLabelTwosmaller.text = dltwo
    }
    
}
