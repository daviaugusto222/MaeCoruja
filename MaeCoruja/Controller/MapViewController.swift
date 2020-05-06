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
        
        mapView.delegate = self
        
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


extension MapViewController: MKMapViewDelegate{
    
    //Creating a different view for each Annotation
    func mapView(
        _mapView: MKMapView,
        viewFor annotation: MKAnnotation
        ) -> MKAnnotationView? {
        
        //Setting this view only for annotations of type MilkBanksAndCollectionPoints
        guard let annotation = annotation as? MilkBanksAndCollectionPoins else {
            return nil
        }
        
        //Setting an identifier
        let identifier = "milkbanksandcollectionpoints"
        var view: MKMarkerAnnotationView
        
        //Making the view reusable
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView {
            
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            //If is not possible reuse an view, create a new one
            view = MKMarkerAnnotationView(
              annotation: annotation,
              reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        
        }
        
        //return the view
        return view
        
    }
    
}
