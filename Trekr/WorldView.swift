//
//  WorldView.swift
//  Trekr
//
//  Created by Frederick Javalera on 6/19/21.
//

import MapKit
import SwiftUI

@available(iOS 15.0, *)
struct WorldView: View {
  
  // MARK: Properties
  @EnvironmentObject var locations: Locations
  @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
  
  var body: some View {
    Map(coordinateRegion: $region, annotationItems: locations.places) { location in
      MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
        NavigationLink {
          ContentView(location: location)
        } label: {
          Image(location.country)
            .resizable()
            .cornerRadius(10)
            .frame(width: 80, height: 40)
            .shadow(radius: 3)
        }
      }
    }
      .navigationTitle("Locations")
  }
}

@available(iOS 15.0, *)
struct WorldView_Previews: PreviewProvider {
  static var previews: some View {
    WorldView()
  }
}
