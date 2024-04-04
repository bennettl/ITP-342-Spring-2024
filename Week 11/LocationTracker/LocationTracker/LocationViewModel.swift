//
//  LocationViewModel.swift
//  LocationTracker
//
//  Created by Bennett Lee on 3/25/24.
//

import Foundation
import Combine
import CoreLocation

let manager = CLLocationManager()


class LocationViewModel : NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var lastKnownLocation: CLLocation?

    override init() {
        super.init()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = kCLDistanceFilterNone
        manager.delegate = self
    }

    func requestPermission(){
        manager.requestWhenInUseAuthorization()
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        if manager.authorizationStatus == .authorizedWhenInUse {
            manager.startUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }

        print("lat \(location.coordinate.latitude) \(location.coordinate.longitude)")

        lastKnownLocation = location

    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error \(error)")
    }
}
