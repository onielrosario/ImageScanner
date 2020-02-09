//
//  Utilities.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/7/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import Foundation


struct Utilities {
    static func getFilesFromBundle() -> [String] {
           var files = [String]()
           let filemanager = FileManager.default
           let path = Bundle.main.resourcePath!
           do {
            files = try filemanager.contentsOfDirectory(atPath: path).filter{$0.hasPrefix("img")}.sorted()
           } catch {
               print(error)
           }
           return files
       }
    
    // for specific json file
    static func getCodeCount(for inventory: [Package]?) -> [String:Int] {
        var dict = [String:Int]()
        if let individualInventory = inventory {
            for package in individualInventory.filter({$0.code != nil && $0.code != "NA" }) {
                if let count = dict[package.code!] {
                    dict[package.code!] = count + 1
                } else {
                    dict[package.code!] = 1
                }
            }
        } else {
            var allJsonFiles = [Package]()
            getFilesFromBundle().forEach { (filename) in
                allJsonFiles.append(contentsOf: Bundle.main.decode([Package].self, from: filename))
            }
           return getCodeCount(for: allJsonFiles)
        }
        return dict
    }
    static func getFilenumber(input: String) -> String {
        return "PACKAGE NUMBER #: " + input.components(separatedBy: ".")[0].components(separatedBy: "g")[1]
    }
}
