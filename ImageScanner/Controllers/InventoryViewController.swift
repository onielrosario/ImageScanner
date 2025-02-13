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
    let inventory = Utilities.getCodeCount(for: nil)
    var allCodes = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        populateTableData()
        tableView.setupTableView(with: self)
    }
    
    private func populateTableData() {
        for code in inventory.keys {
            allCodes.append(code)
        }
        allCodes.sort()
    }
}
 // MARK: - Extension
extension InventoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.inventoryCellIdentifier, for: indexPath) as? InventoryTableViewCell else {
            fatalError("error trying to dequeue Inventory Cell")
        }
        cell.codeLabel.text = allCodes[indexPath.row]
        if let count = inventory[allCodes[indexPath.row]] {
            cell.countLabel.text = count.description
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
}
