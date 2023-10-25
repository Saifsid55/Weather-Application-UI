//
//  HomeTableViewCell.swift
//  Wheather Application
//
//  Created by Mohd Saif on 18/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    let tempData = ["18°","17°","17°","16°","16°","15°"]
    let timeData = ["Now","15:00","16:00","17:00","18:00","19:00"]
    let imagenames = ["ic_cloud","ic_foggy","ic_cloudy","ic_cloudy","ic_raining","ic_moon"]
    lazy var headerCollectionView: UICollectionView = {
//        var collectionView = UICollectionView()
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: 200), collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isScrollEnabled = true
        collectionView.backgroundColor = .clear
        collectionView.isUserInteractionEnabled = true 
        return collectionView
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
        
        // Initialization code
    }

    
    
    
    func setUI() {
        
        let nib = UINib(nibName: "HeaderCVC", bundle: nil)
        headerCollectionView.register(nib, forCellWithReuseIdentifier: "HeaderCVC")
        
        addSubview(headerCollectionView)
        headerCollectionView.anchor(top: topAnchor,left: leadingAnchor,bottom: bottomAnchor,right: trailingAnchor,paddingTop: 0,paddingLeft: 0,paddingBottom: 0,paddingRight: 0,height: 120)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension HomeTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tempData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCVC", for: indexPath) as! HeaderCVC
        cell.setView(timeLabeltext: timeData[indexPath.item], cloudImg: imagenames[indexPath.item], templabelText: tempData[indexPath.item])
        cell.backgroundColor = UIColor(hexString: "#DFE3E6", alpha: 1.0)
        return cell
    }
    
    
}


extension HomeTableViewCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("First cell tapped")
    }
}
