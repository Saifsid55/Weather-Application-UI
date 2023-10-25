//
//  BottomCardView.swift
//  Wheather Application
//
//  Created by Mohd Saif on 19/10/23.
//

import Foundation
import UIKit

class BottomCardView: UIView {
    
    lazy var topleftImgView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ic_sunrise")
        return imageView
    }()
    
    lazy var toprightImgview: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ic_sunset")
        return imageView
    }()
    
    
    lazy var bottomleftLabelone : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.tintColor = .gray
        label.text = "Sunrise"
        return label
    }()
    
    lazy var bottomleftLabeltwo : UILabel = {
        let label = UILabel()
        label.text = "7:12"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var bottomrightLabelone : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.tintColor = .gray
        label.text = "Sunset"
        return label
    }()
    
    lazy var bottomrightLabeltwo : UILabel = {
        let label = UILabel()
        label.text = "17:33"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    
    lazy var bottomleftStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 5
        stack.distribution = .fillEqually
        return stack
    }()
    
    
    lazy var bottomrightStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 5
        stack.distribution = .fillEqually
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setView()
    }
    
    func setView() {
        
        addSubview(topleftImgView)
        topleftImgView.anchor(top: topAnchor,left: leadingAnchor,paddingTop: 16,paddingLeft: 12,width: 35,height: 35)
        
        addSubview(toprightImgview)
        toprightImgview.anchor(top: topAnchor,right: trailingAnchor,paddingTop: 16,paddingRight: 12,width: 35,height: 35)
        
        addSubview(bottomleftStack)
        bottomleftStack.anchor(left: leadingAnchor,bottom: bottomAnchor,paddingLeft: 12,paddingBottom: 20)
        bottomleftStack.addArrangedSubview(bottomleftLabelone)
        bottomleftStack.addArrangedSubview(bottomleftLabeltwo)
        
        
        addSubview(bottomrightStack)
        bottomrightStack.anchor(bottom: bottomAnchor,right: trailingAnchor,paddingBottom: 20,paddingRight: 12)
        bottomrightStack.addArrangedSubview(bottomrightLabelone)
        bottomrightStack.addArrangedSubview(bottomrightLabeltwo)
        
    }
    
    
}
