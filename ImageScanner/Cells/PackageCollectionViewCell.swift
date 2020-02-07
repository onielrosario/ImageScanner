//
//  PackageCollectionViewCell.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/6/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit

protocol SelfConfiguringCell {
       func configure(with imageName: String)
}

class PackageCollectionViewCell: UICollectionViewCell, SelfConfiguringCell {
    @IBOutlet weak var imageButton: UIButton!
    func configure(with imageName: String) {
        imageButton.setImage(UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal), for: .normal)
        layer.cornerRadius = 10
    }
}
