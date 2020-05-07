//
//  MilkBanksAndCollectionPointsView.swift
//  MaeCoruja
//
//  Created by Felipe Santana on 07/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import Foundation

import MapKit

class ArtworkView: MKAnnotationView {
  override var annotation: MKAnnotation? {
    willSet {
      guard let milkbanksandcollectionpoints = newValue as? MilkBanksAndCollectionPoins else {
        return
      }

      canShowCallout = true
      calloutOffset = CGPoint(x: -5, y: 5)
      let mapsButton = UIButton(frame: CGRect(
        origin: CGPoint.zero,
        size: CGSize(width: 48, height: 48)))
      mapsButton.setBackgroundImage(#imageLiteral(resourceName: "Map"), for: .normal)
      rightCalloutAccessoryView = mapsButton
        
      image = milkbanksandcollectionpoints.image
        
      let detailLabel = UILabel()
      detailLabel.numberOfLines = 0
      detailLabel.font = detailLabel.font.withSize(12)
      detailLabel.text = milkbanksandcollectionpoints.subtitle
      detailCalloutAccessoryView = detailLabel
        
    }
  }
}
