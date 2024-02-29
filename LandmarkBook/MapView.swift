//
//  MapView.swift
//  LandmarkBook
//
//  Created by Olgun ‏‏‎‏‏‎ on 29.02.2024.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var cordinate : CLLocationCoordinate2D
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: cordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    func makeUIView(context: Context) ->  MKMapView {
        MKMapView(frame: .zero)
        
    }
    
}

#Preview {
    MapView(cordinate: landmarkArray[0].locationcordibate)
}
