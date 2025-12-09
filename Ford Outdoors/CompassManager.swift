//
//  CompassManager.swift
//  Ford Outdoors
//
//  Created by William Garrett Ford on 12/9/25.
//

import Combine
import CoreLocation
import SwiftUI

class CompassManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var heading: Double = 0 // 0-360 degree
    
    private let manager = CLLocationManager()
    
    override init() {
        super.init()
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        
        if CLLocationManager.headingAvailable() {
            manager.headingFilter = kCLHeadingFilterNone
            manager.startUpdatingHeading()
        }
    }


    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        DispatchQueue.main.async {
            self.heading = newHeading.magneticHeading
        }
    }
}
