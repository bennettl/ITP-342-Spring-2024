//
//  ContentView.swift
//  MapDemo
//
//  Created by Bennett Lee on 3/25/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    let blueBottleCoordinate = CLLocationCoordinate2D(
        latitude: 34.03938399745029,
        longitude: -118.23274107181294
    )

    let starbucksCoordinate = CLLocationCoordinate2D(latitude: 34.02567035853408, longitude:  -118.23963690041613)

    let unionStationCoordinate = CLLocationCoordinate2D(latitude: 34.05688028490727, longitude:  -118.23658810742685)

    var body: some View {
        Map() {

            Annotation("Blue Bottle", coordinate: blueBottleCoordinate) {
                Circle()
                    .foregroundStyle(.teal)
                    .frame(width: 75.0)
            }

//            Marker("Blue Bottle Coffee", coordinate: blueBottleCoordinate)
//                .tint(.teal)


            Marker("Starbucks", systemImage: "cup.and.saucer", coordinate: starbucksCoordinate)
                .tint(.green)

            Marker("Union Station", monogram: Text("US"), coordinate: unionStationCoordinate)
        }
        .mapStyle(.standard)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
