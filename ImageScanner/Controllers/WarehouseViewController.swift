//
//  ViewController.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/4/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit

class WarehouseViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func  setupUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension WarehouseViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Utilities.getFilesFromBundle().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.warehouseCellIdentifier, for: indexPath) as? PackageCollectionViewCell else {
            fatalError("Cell could not be dequeued")
        }
        cell.configure(with:Utilities.getFilesFromBundle()[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presentDetail(with: indexPath.row)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return Constants.size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return Constants.edgeInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return Constants.minimumLineSpacingForSectionAt
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return Constants.minimumInteritemSpacingForSectionAt
    }
    
    @objc private func presentDetail(with indexPath: Int) {
        guard let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: Constants.detailViewControllerIdentifier) as? DetailViewController else { return }
        detailVC.jsonName = Utilities.getFilesFromBundle()[indexPath]
        present(detailVC, animated: true, completion: nil)
    }
}
