//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 2/26/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack {
            RedPage()
                .navigationDestination(for: String.self) { value in
                    if value == "blue"{
                        BluePage()
                    } else if value == "green"{
                        GreenPage()
                    }
                }
                .navigationDestination(for: User.self) {
                    UserProfileView(user: $0)
                }


        }
    }
}

#Preview {
    ContentView()
}
