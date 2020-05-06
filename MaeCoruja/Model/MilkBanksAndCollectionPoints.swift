//
//  MilkBanksAndCollectionPoints.swift
//  MaeCoruja
//
//  Created by Felipe Santana on 05/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import Foundation
import MapKit
import Contacts

class MilkBanksAndCollectionPoins: NSObject, MKAnnotation {
    
    //Creating the class properties
    let title: String?
    let locationName: String?
    let discipline: String?
    let coordinate: CLLocationCoordinate2D
    
    //Initializing the properties
    init(
        title: String?,
        locationName: String?,
        discipline: String?,
        coordinate: CLLocationCoordinate2D) {
        
        
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
        
    }
    
    //Setting a subtitle
    var subtitle: String?{
        
        return locationName
        
    }
    
    //Creating a mapItem to open maps app
    var mapItem: MKMapItem? {
      guard let location = locationName else {
        return nil
      }

      let addressDict = [CNPostalAddressStreetKey: location]
      let placemark = MKPlacemark(
        coordinate: coordinate,
        addressDictionary: addressDict)
      let mapItem = MKMapItem(placemark: placemark)
      mapItem.name = title
      return mapItem
    }
    
    
    
}
