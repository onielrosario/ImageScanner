//
//  Package.swift
//  ImageScanner
//
//  Created by Oniel Rosario on 2/5/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import UIKit

struct Figure: Codable {
   let className: String
    let score: Double
    let imgSize: [Int]
    let rect: [[CGFloat]]
    let code: String?
}
