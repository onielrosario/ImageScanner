//
//  PackageCollectionViewCell.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/6/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit


class PackageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageButton: UIImageView!
    func configure(with imageName: String) {
//        imageButton.setImage(UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal), for: .normal)
        imageButton.image = UIImage(named: imageName)
        layer.cornerRadius = 10
    }
}
