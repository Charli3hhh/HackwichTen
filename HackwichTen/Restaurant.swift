//
//  Restaurant.swift
//  HackwichTen
//
//  Created by Charles Ombao on 4/20/20.
//  Copyright © 2020 Charles Ombao. All rights reserved.
//

import UIKit
import MapKit

class Restuarant: NSObject, MKAnnotation {
    
    let restaurantTitle: String
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init() }
    
    var subtitle: String? {
        return restaurantTitle

    }
}
