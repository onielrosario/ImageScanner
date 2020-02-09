//
//  DetailViewController.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/7/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var packageNumberLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var datasetSwitch: UISwitch!
    private var inventoryCount = [String:Int]()
    private var codes = [String]()
    public var jsonName: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        imageView.image = UIImage(named: jsonName)
        packageNumberLabel.text = Utilities.getFilenumber(input: jsonName)
        inventoryCount = Utilities.getCodeCount(for: Bundle.main.decode([Package].self, from: jsonName!))
        for code in inventoryCount.keys {
            codes.append(code)
        }
        codes.sort()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    }
}
extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventoryCount.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell", for: indexPath) as? DatasetTableViewCell else {
            fatalError("Error trying to dequeue DatasetCell")
        }
        cell.codeLabel.text = codes[indexPath.row]
        if let count = inventoryCount[codes[indexPath.row]] {
            cell.countLabel.text = count.description
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
}
