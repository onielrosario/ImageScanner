//
//  Constants.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/6/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit


struct Constants {
    // get all data from JSON files folder
    static let allFiles = Utilities.getFilesFromBundle()
    static let warehouseCellIdentifier = "PackageCell"
    static let inventoryCellIdentifier = "InventoryCell"
    static let detailViewCellIdentifier = "DataCell"
    // AutoLayout constants
        private static let verticalSpacing: CGFloat = 24
        private static let leftRightSpacing: CGFloat = 12
        private static let middleSpacing: CGFloat = 8
        private static let numberOfHorizontalCells: CGFloat = 3
    private static let numberOfVerticalCells: CGFloat = 5.5
        private static let screenWidth = UIScreen.main.bounds.width
        private static let screenHeight = UIScreen.main.bounds.height
        private static let width = (screenWidth - ((leftRightSpacing * numberOfHorizontalCells) + middleSpacing)) / numberOfHorizontalCells
        private static let height = (screenHeight - (verticalSpacing * numberOfVerticalCells)) / numberOfVerticalCells
        static let size = CGSize(width: width, height: height)
        static let edgeInsets = UIEdgeInsets(top: verticalSpacing, left: leftRightSpacing, bottom: verticalSpacing, right: leftRightSpacing)
        static let minimumLineSpacingForSectionAt: CGFloat = verticalSpacing
        static let minimumInteritemSpacingForSectionAt: CGFloat = middleSpacing
    
}
