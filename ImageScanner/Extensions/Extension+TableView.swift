//
//  Extension+TableView.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/13/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit


extension UITableView {
    
    func setupTableView(with controller: UIViewController) {
        self.dataSource = (controller as! UITableViewDataSource)
        self.delegate = (controller as! UITableViewDelegate)
        self.tableFooterView = UIView()
    }
    
}


