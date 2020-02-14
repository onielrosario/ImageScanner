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
    private var codes = [String]()
    public var jsonName: String!
    private var inventoryCount = [String:Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        imageView.image = UIImage(named: jsonName)
        packageNumberLabel.text = Utilities.getFilenumber(input: jsonName)
        inventoryCount = Utilities.getCodeCount(for: Bundle.main.decode([Figure].self, from: jsonName))
        for code in inventoryCount.keys {
            codes.append(code)
        }
        codes.sort()
        tableView.setupTableView(with: self)
    }
   
    @IBAction func displayBoxes(_ sender: UISwitch) {
        if sender.isOn {
            displayData()
        } else {
            imageView.image = UIImage(named: jsonName)
        }
    }
    
    private func displayData() {
        let barcodes = Bundle.main.decode([Figure].self, from: jsonName)
        barcodes.forEach { barcode in
            imageView.image = Utilities.DrawOnImage(imageView: imageView, package: barcode)
        }
    }
}

extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventoryCount.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.detailViewCellIdentifier, for: indexPath) as? DatasetTableViewCell else {
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
