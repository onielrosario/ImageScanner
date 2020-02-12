//
//  Package.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/5/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit

struct Package: Codable {
   let className: String
    let score: Double
    let imgSize: [Int]
    let rect: [[CGFloat]]
    //depending on className will access code value
    let code: String?
}
