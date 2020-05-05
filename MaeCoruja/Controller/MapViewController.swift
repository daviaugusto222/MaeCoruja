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
        
        //Define the center of ceara
        let cearaCenter = CLLocation(latitude: -5.196645, longitude: -39.482799)
        
        //Setting a region based on ceara center
        let region = MKCoordinateRegion(center: cearaCenter.coordinate, latitudinalMeters: 50000, longitudinalMeters: 60000)
        
        //Setting a camera boundary based on the regin defined before
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
        
        //Setting a zoom
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 200000)
        
        //Applying zoom setting to the camera
        mapView.setCameraZoomRange(zoomRange, animated: true)
        
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
