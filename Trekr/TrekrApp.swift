//
//  TrekrApp.swift
//  Trekr
//
//  Created by Frederick Javalera on 6/17/21.
//

import SwiftUI

@main
struct TrekrApp: App {
  var body: some Scene {
    WindowGroup {
      TabView {
        NavigationView {
          ContentView(location: Locations().primary)
        }
        .tabItem {
          Image(systemName: "airplane.circle.fill")
          Text("Discover")
        }
      }
    }
  }
}
