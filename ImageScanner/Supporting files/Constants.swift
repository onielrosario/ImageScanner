//
//  Constants.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/6/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit


struct Constants {
    static let fileNames = [
    "img0000",
    "img0001",
    "img0002",
    "img0003",
    "img0004",
    "img0005",
    "img0006",
    "img0007",
    "img0008",
    "img0009",
    "img0010",
    "img0011",
    "img0012",
    "img0013",
    "img0014",
    "img0015",
    "img0016",
    "img0017",
    "img0018",
    "img0019",
    "img0020",
    "img0021",
    "img0022",
    "img0023"
    ]
    static let cellIdentifier = "PackageCell"
    
    
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
