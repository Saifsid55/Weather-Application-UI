//
//  WheatherDetailTableCell.swift
//  Wheather Application
//
//  Created by Mohd Saif on 18/10/23.
//

import UIKit

class WheatherDetailTableCell: UITableViewCell {

    
    var labelOneArr = ["Feels like","W wind","Humidity","UV","Visibility","Air pressure"]
    var labelTwoArr = ["16°","13","62","0","1","1017"]
    var labelTwosmaller = [" ","km/h","%","very weak","km","hPa"]
    var imageNames = ["ic_temperature","ic_air","ic_humidity","ic_uv","ic_visibility","ic_air"]
    
    lazy var collectionView: UICollectionView = {
//        var collectionView = UICollectionView()
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: 550), collectionViewLayout: layout)
        layout.scrollDirection = .vertical
        collectionView.showsVerticalScrollIndicator = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isScrollEnabled = true
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    lazy var bottomView: BottomCardView = {
        let view = BottomCardView()
        view.backgroundColor = .white//UIColor(hexString: "#E7EBEE")
        view.layer.cornerRadius = 15
        return view
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = .clear
        setUI()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setUI() {
        
        let nib = UINib(nibName: "bottomWheatherCvc", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "bottomWheatherCvc")

        
        addSubview(collectionView)
        collectionView.anchor(top: topAnchor,left: leadingAnchor,right: trailingAnchor,paddingTop: 8,paddingLeft: 4,paddingRight: 4,height: 550)
        
        addSubview(bottomView)
        bottomView.anchor(top: collectionView.bottomAnchor,left: leadingAnchor,bottom: bottomAnchor,right: trailingAnchor,paddingTop: 8,paddingLeft: 4,paddingBottom: 4,paddingRight: 4,height: 200)
    }

}


extension WheatherDetailTableCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labelOneArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bottomWheatherCvc", for: indexPath) as! bottomWheatherCvc
        cell.setView(labelOneText: labelOneArr[indexPath.item], labelTwoText: labelTwoArr[indexPath.item], imagename: imageNames[indexPath.item], dltwo: labelTwosmaller[indexPath.item])
        
        cell.backgroundColor = UIColor(hexString: "#E7EBEE")
        cell.layer.cornerRadius = 15
//        cell.layer.borderColor = UIColor.black.cgColor
//        cell.layer.borderWidth = 1.0
        return cell
    }
    
    
}


extension WheatherDetailTableCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 20) / 2
        let height = (collectionView.frame.height - 20) / 3
        return CGSize(width: width, height: height)
        
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Third cell tapped ")
    }
}
