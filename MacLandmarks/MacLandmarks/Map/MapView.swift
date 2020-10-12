//
//  MapView.swift
//  MacLandmarks
//
//  Created by 刘辉 lewis on 2020/10/12.
//

import SwiftUI
import MapKit

struct MapView {
    var coordinate: CLLocationCoordinate2D

    func makeMapView() -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateMapView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: false)
    }
}

#if os(macOS)

extension MapView: NSViewRepresentable {
    func makeNSView(context: Context) -> MKMapView {
        makeMapView()
    }
    
    func updateNSView(_ nsView: MKMapView, context: Context) {
        updateMapView(nsView, context: context)
    }
}

#else

extension MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        makeMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        updateMapView(uiView, context: context)
    }
}

#endif

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}

