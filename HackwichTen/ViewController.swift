//
//  ViewController.swift
//  HackwichTen
//
//  Created by Charles Ombao on 4/16/20.
//  Copyright © 2020 Charles Ombao. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocataion = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(location: initialLocataion)
        // Do any additional setup after loading the view.
        
        let restaurantOne = Restuarant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        
        let restaurantTwo = Restuarant(title: "Kalapawai Cafe & Deli", type: "American", coordinate: CLLocationCoordinate2D (latitude: 21.331996, longitude: -158.083547))
        
        mapView.addAnnotation(restaurantOne)
        
        mapView.addAnnotation(restaurantTwo)
    }

    func centerMapOnLocation(location: CLLocation) {
        
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(coordinateRegion, animated: true)
        
    }

}
