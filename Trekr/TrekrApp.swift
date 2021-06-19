//
//  TrekrApp.swift
//  Trekr
//
//  Created by Frederick Javalera on 6/17/21.
//

import SwiftUI

@available(iOS 15.0, *)
@main
struct TrekrApp: App {
  
  // MARK: Properties
  @StateObject var locations = Locations()
  
  // MARK: Body
  var body: some Scene {
    WindowGroup {
      TabView {
        NavigationView {
          ContentView(location: locations.primary)
        }
        .tabItem {
          Image(systemName: "airplane.circle.fill")
          Text("Discover")
        }
        
        NavigationView {
          WorldView()
        }
        .tabItem {
          Image(systemName: "star.fill")
          Text("Locations")
        }
        
        NavigationView {
          TipsView()
        }
        .tabItem {
          Image(systemName: "list.bullet")
          Text("Tips")
        }
      }
      .environmentObject(locations)
    }
  }
}
