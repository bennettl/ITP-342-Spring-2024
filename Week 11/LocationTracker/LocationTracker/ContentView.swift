//
//  ContentView.swift
//  LocationTracker
//
//  Created by Bennett Lee on 3/25/24.
//

import SwiftUI

struct ContentView: View {

    @StateObject var locationViewModel = LocationViewModel()
    
    var body: some View {
        VStack {
            if let location = locationViewModel.lastKnownLocation {
                Text("You are in")
                    .font(.title)
                Text("Lat \(location.coordinate.latitude)")
                Text("Long \(location.coordinate.longitude)")
            } else {
                Button("Give us location?") {
                    locationViewModel.requestPermission()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
