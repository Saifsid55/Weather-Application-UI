//
//  HeaderCVC.swift
//  Wheather Application
//
//  Created by Mohd Saif on 18/10/23.
//

import UIKit

class HeaderCVC: UICollectionViewCell {

    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var cloudImgView: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mainView.backgroundColor = UIColor(hexString: "#DFE3E6", alpha: 1.0)
    }
    
    
    func setView(timeLabeltext: String, cloudImg: String, templabelText: String) {
        tempLabel.text = templabelText
        cloudImgView.image = UIImage(named: cloudImg)
        timeLabel.text = timeLabeltext
    }

}
