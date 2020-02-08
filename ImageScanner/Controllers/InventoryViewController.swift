//
//  InventoryViewController.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/8/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit

class InventoryViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let inventory = Utilities.getAllDatasetCount()
    var allCodes = [String]()
    var allCount = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        populateTableData()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
    
    private func populateTableData() {
        for (code,count) in inventory {
            allCodes.append(code)
            allCount.append(count)
        }
    }
}

extension InventoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventory.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InventoryCell", for: indexPath) as? InventoryTableViewCell else {
            fatalError("error trying to dequeue Inventory Cell")
        }
        cell.codeLabel.text = allCodes[indexPath.row]
        cell.countLabel.text = allCount[indexPath.row].description
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
}
