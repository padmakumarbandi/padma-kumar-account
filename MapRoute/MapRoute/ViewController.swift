//
//  ViewController.swift
//  MapRoute
//
//  Created by Prahlad on 6/26/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    @IBOutlet weak var mapMV: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Maps"
        mapMV.delegate = self
        mapMV.showsUserLocation = true
        mapMV.showsPointsOfInterest = true
        mapMV.showsScale = true
    }
}

