//
//  MapViewController.swift
//  MaeCoruja
//
//  Created by Felipe Santana on 04/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet private var mapView: MKMapView!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        //Define the Fortaleza latitude and longitude as initial
        let initialLocation = CLLocation(latitude: -3.71839, longitude: -38.5434)
        
        //Center the map in Fortaleza
        mapView.centerToLocation(initialLocation)
        
    }
    
}


//Extension for set the zoom in a specified location
private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
