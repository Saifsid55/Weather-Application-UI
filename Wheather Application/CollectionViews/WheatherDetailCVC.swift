//
//  WheatherDetailCVC.swift
//  Wheather Application
//
//  Created by Mohd Saif on 18/10/23.
//

import UIKit

class WheatherDetailCVC: UICollectionViewCell {

    @IBOutlet weak var dayLabel: UILabel!
    
    @IBOutlet weak var centreImgView: UIImageView!
    
    @IBOutlet weak var wheatherLbl: UILabel!
    
    @IBOutlet weak var tempLbl: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setView(dayLabelText: String, centreImgViewText: String, wheatherText: String, temoLblText: String) {
        
        dayLabel.text = dayLabelText
        centreImgView.image = UIImage(named: centreImgViewText)
        wheatherLbl.text = wheatherText
        tempLbl.text = temoLblText
    }

}
