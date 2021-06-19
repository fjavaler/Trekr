//
//  Tip.swift
//  Trekr
//
//  Created by Frederick Javalera on 6/19/21.
//

import Foundation

struct Tip: Decodable {
  let text: String
  let children: [Tip]?
}
