//
//  Utilities.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/7/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import Foundation


struct Utilities {
    static func getCodeCount(inventory: [Package]) -> [String:Int] {
        let inventoryRef = inventory.filter{$0.code != nil && $0.code != "NA" }
        var dict = [String:Int]()
        for package in inventoryRef {
            if let count = dict[package.code!] {
                dict[package.code!] = count + 1
            } else {
                dict[package.code!] = 1
            }
        }
        return dict
    }
    
    static func getFilenumber(input: String) -> String {
       return input.components(separatedBy: "g")[1]
    }
    
    static func getAllDatasetCount() -> [String:Int] {
        var allJsonFiles = [Package]()
        Constants.fileNames.forEach { (filename) in
            allJsonFiles.append(contentsOf: Bundle.main.decode([Package].self, from: "\(filename).json"))
        }
     return getCodeCount(inventory: allJsonFiles)
    }
}
