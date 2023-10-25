//
//  WheatherDetailView.swift
//  Wheather Application
//
//  Created by Mohd Saif on 18/10/23.
//

import Foundation
import UIKit

class WheatherDetailView: UIView {
    
    lazy var dayLabel: UILabel = {
        
        let label = UILabel()
        return label
    }()
    
    lazy var horizontalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        return stack
    }()
    
    lazy var verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        return stack
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("DETAIL VIEW IS CALLED ")
//        executeProgramBtm.isHidden = true
//        setView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("DETAIL VIEW IS CALLED ")
//        setView()
    }

}
