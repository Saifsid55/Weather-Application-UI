//
//  ViewController.swift
//  Wheather Application
//
//  Created by Mohd Saif on 18/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = .cyan
        
        return scrollView
    }()
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(HomeTableViewCell.self, forCellReuseIdentifier: "HomeTableViewCell")
        table.register(WheatherTableViewCell.self, forCellReuseIdentifier: "WheatherTableViewCell")
        table.register(WheatherDetailTableCell.self, forCellReuseIdentifier: "WheatherDetailTableCell")
        table.delegate = self
        table.dataSource = self
        return table
    }()
    

    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBar()
        setUI()
        self.navigationController?.navigationBar.barStyle = .default
        self.view.backgroundColor = UIColor(hexString: "#DFE3E6")
        
//        tableView.estimatedRowHeight = 120
//        tableView.rowHeight = UITableView.automaticDimension
       
//        headerCollectionView.delegate = self
//        headerCollectionView.dataSource = self
    }


    
    func setNavBar() {
        let locationButton = UIBarButtonItem(title: "Lucknow", style: .plain, target: self, action: nil)
        
        let rightBtn = UIBarButtonItem(image: UIImage(named: "ic_hamburger"), style: .plain, target: self, action: nil)
        let rightBtn2 = UIBarButtonItem(image: UIImage(named: "ic_toolbar"), style: .plain, target: self, action: nil)
//        let rightBtn2 = UIBarButtonItem(title: "Button3", style: .plain, target: self, action: nil)
        locationButton.tintColor = .black
        rightBtn.tintColor = .black
        rightBtn2.tintColor = .black
        self.navigationItem.leftBarButtonItem = locationButton
        self.navigationItem.rightBarButtonItems = [rightBtn, rightBtn2]
    }
    
    
    
    
    func setUI() {
        view.addSubview(tableView)
        tableView.anchor(top: view.safeAreaLayoutGuide.topAnchor,left: view.leadingAnchor,bottom: view.bottomAnchor,right: view.trailingAnchor,paddingTop: 0,paddingLeft: 0,paddingBottom: 0,paddingRight: 0)
        
        tableView.backgroundColor = UIColor(hexString: "#DFE3E6", alpha: 1.0)
        
    }
    
}





extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) -> UIView? {
//        let headerView = UIView()
//        headerView.backgroundColor = UIColor.red
//        return headerView
//    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return ""
        } else {
            return "Wheather details"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40.0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                return 120
            } else if indexPath.row == 1 {
                return 565
            }
        }
        else {
            return 760
        }
        return 760
       
        //UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else {
            return 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
                cell.setUI()
                cell.backgroundColor = UIColor(hexString: "#DFE3E6", alpha: 1.0)
                return cell
                
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "WheatherTableViewCell", for: indexPath) as! WheatherTableViewCell
                cell.setUI()
                cell.parentView = view
                cell.backgroundColor = UIColor(hexString: "#DFE3E6", alpha: 1.0)
                return cell
            }
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "WheatherDetailTableCell", for: indexPath) as! WheatherDetailTableCell
            cell.setUI()
            cell.backgroundColor = UIColor(hexString: "#DFE3E6", alpha: 1.0)
            return cell
        }
       
        
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
//        cell.setUI()
//        
//        return cell
        
    }
    
    
}


extension ViewController: UITableViewDelegate {
    
}





