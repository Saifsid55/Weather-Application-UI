//
//  WheatherTableViewCell.swift
//  Wheather Application
//
//  Created by Mohd Saif on 18/10/23.
//

import UIKit

class WheatherTableViewCell: UITableViewCell {

    
    let days = ["Today","Tommorow","Thu","Fri","Sat","Sun","Mon"]
    let temperatureType = ["Partly Cloudy","Fog","Fog","Sunny","Sunny","Sunny","Sunny"]
    let temperature = ["18°/8°","21°/10°","21°/12°","22°/9°","20°/8°","19°/7°","19°/6°"]
    let imagenames = ["ic_cloudy","ic_foggy","ic_foggy","ic_foggy","ic_sunny","ic_sunny","ic_sunny"]
    
    var parentView: UIView?
    
    lazy var backgroundmainView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexString: "#EFF3F6")
//        view.layer.borderColor = UIColor.black.cgColor
//        view.layer.borderWidth = 1.0
        view.layer.cornerRadius = 15.0
        return view
    }()
    
    lazy var collectionView: UICollectionView = {
//        var collectionView = UICollectionView()
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: 500), collectionViewLayout: layout)
        layout.scrollDirection = .vertical
        collectionView.showsVerticalScrollIndicator = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isScrollEnabled = false 
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()

    lazy var footerLabel: UILabel = {
        let label = UILabel()
        label.text = "15-day wheather forecast"
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUI()
        
        self.widthAnchor.constraint(equalToConstant: (parentView?.bounds.width)! - 20).isActive = true 
    }
    
    func setUI() {
        
        let nib = UINib(nibName: "WheatherDetailCVC", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "WheatherDetailCVC")
        
        addSubview(backgroundmainView)
        backgroundmainView.anchor(top: topAnchor,left: leadingAnchor,bottom: bottomAnchor,right: trailingAnchor,paddingTop: 4,paddingLeft: 4,paddingBottom: 4,paddingRight: 4, width: bounds.width)
//        backgroundmainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        backgroundmainView.addSubview(collectionView)
        collectionView.anchor(top:  backgroundmainView.topAnchor,left:  backgroundmainView.leadingAnchor,right:  backgroundmainView.trailingAnchor,paddingTop: 0,paddingLeft: 8,paddingRight: 8,height: 500)
        
        
        backgroundmainView.addSubview(lineView)
        lineView.centerXAnchor.constraint(equalTo:  backgroundmainView.centerXAnchor).isActive = true
        lineView.anchor(top: collectionView.bottomAnchor,paddingTop: 8,width: bounds.width - 40,height: 1.5)
    
        
        backgroundmainView.addSubview(footerLabel)
        footerLabel.centerXAnchor.constraint(equalTo:  backgroundmainView.centerXAnchor).isActive = true
        footerLabel.anchor(top: lineView.bottomAnchor,bottom:  backgroundmainView.bottomAnchor,paddingTop: 8,paddingBottom: 8)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension WheatherTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WheatherDetailCVC", for: indexPath) as! WheatherDetailCVC
        cell.setView(dayLabelText: days[indexPath.item], centreImgViewText: imagenames[indexPath.item], wheatherText: temperatureType[indexPath.item], temoLblText: temperature[indexPath.item])
        return cell
    }
    
    
}


extension WheatherTableViewCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: backgroundmainView.bounds.width - 10, height: 60)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Second cell tapped ")
    }
}
