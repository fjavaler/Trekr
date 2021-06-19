//
//  ContentView.swift
//  Trekr
//
//  Created by Frederick Javalera on 6/17/21.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: Properties
  let location: Location
  
  // MARK: Body
  var body: some View {
    ScrollView {
      Image(location.heroPicture)
        .resizable()
        .scaledToFit()
      
      Text(location.name)
        .font(.largeTitle)
        .bold()
        .multilineTextAlignment(.center)
      
      Text(location.country)
        .font(.title)
        .foregroundColor(.secondary)
      
      Text(location.description)
        .padding(.horizontal)
      
      Text("Did you know?")
        .font(.title3)
        .bold()
        .padding(.top)
      
      Text(location.more)
        .padding(.horizontal)
    }
    .navigationTitle("Discover")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      ContentView(location: Location.example)
    }
  }
}
