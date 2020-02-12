//
//  Utilities.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/7/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit


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
            for package in individualInventory.filter({ $0.code != nil && $0.code != "NA" }) {
                if let count = dict[package.code!] {
                    dict[package.code!] = count + 1
                } else {
                    dict[package.code!] = 1
                }
            }
        } else {
          return getAllCodeCount()
        }
        return dict
    }
    
    static func getFilenumber(input: String) -> String {
        return "PACKAGE NUMBER #: " + input.components(separatedBy: ".")[0].components(separatedBy: "g")[1]
    }
    
   static private func getAllCodeCount() -> [String:Int] {
        var allJsonFiles = [Package]()
        Utilities.getFilesFromBundle().forEach { (filename) in
                    allJsonFiles.append(contentsOf: Bundle.main.decode([Package].self, from: filename))
                }
        return Utilities.getCodeCount(for: allJsonFiles)
    }
    
// MARK: - Image Overlay Data
    // work on image rendering rect
    static func DrawOnImage(startingImage: UIImage, package: Package) -> UIImage {
        UIGraphicsBeginImageContext(startingImage.size)
         // Draw the starting image in the current context as background
        startingImage.draw(at: CGPoint.zero)
         // Get the current context
        let context = UIGraphicsGetCurrentContext()!
        // get frames, origins, coordinates
        let imgWidth = CGFloat(package.imgSize.first!)
        let imgHeight = CGFloat(package.imgSize.last!)
        let x: CGFloat = package.rect.first!.first! * imgWidth
        let y: CGFloat = package.rect.first!.last! * imgHeight
        let width: CGFloat = package.rect.last!.first! * imgWidth
        let height: CGFloat = package.rect.last!.last! * imgHeight
        let rect =  CGRect(x: x, y: imgHeight - y - height, width: width, height: height)
        // add to context and customize
        context.addRect(rect)
        context.setStrokeColor(makeColor(package: package).cgColor)
        context.setLineWidth(3)
        context.drawPath(using: .stroke)
        guard let myImage = UIGraphicsGetImageFromCurrentImageContext() else { return UIImage() }
        UIGraphicsEndImageContext()
         return myImage
    }
    
    static private func makeColor(package: Package) -> UIColor {
        switch package.className {
        case "box":
            return UIColor.magenta
        case "barcode":
            return .yellow
        default:
            return .green
        }
    }
    
    static private func addLabel() {
        
    }
}

