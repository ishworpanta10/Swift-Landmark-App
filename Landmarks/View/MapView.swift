//
//  MapView.swift
//  Landmarks
//
//  Created by Ishwor on 06/03/2024.
//
import MapKit

import SwiftUI

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
        
    }
    private var region : MKCoordinateRegion{
        MKCoordinateRegion(
            center:coordinate , span: MKCoordinateSpan(
                latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude:-116.166_868))
}
