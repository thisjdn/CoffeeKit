//
//  ViewController.swift
//  CoffeeKit
//
//  Created by Jaden Hong on 2023-01-21.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    let testLocation = CLLocationCoordinate2D(latitude: Constants.testLatitude, longitude: Constants.testLongitude)
    
    let mapView : MKMapView = {
        let map = MKMapView()
        return map
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setMap()
         
        setPlacemark(location: testLocation)
         
    }
    
    func setMap() {
        view.addSubview(mapView)
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mapView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        mapView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }

    
    func setPlacemark(location: CLLocationCoordinate2D) {
        var pin = MKPlacemark(coordinate: location)
        let coordinateRegion = MKCoordinateRegion(center: pin.coordinate, latitudinalMeters: 800, longitudinalMeters: 800)
        
        let name = pin.description.description
        
        mapView.setRegion(coordinateRegion, animated: true)
        mapView.addAnnotation(pin) 
    }
    

}

