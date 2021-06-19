//
//  Locations.swift
//  Trekr
//
//  Created by Frederick Javalera on 6/19/21.
//

import Foundation
import UIKit

class Locations: ObservableObject {
  let places: [Location]
  var primary: Location {
    places[0]
  }
  
  init() {
    let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
    let data = try! Data(contentsOf: url)
    places = try! JSONDecoder().decode([Location].self, from: data)
  }
}
