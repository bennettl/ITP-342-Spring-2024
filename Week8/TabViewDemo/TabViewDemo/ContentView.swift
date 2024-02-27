//
//  ContentView.swift
//  TabViewDemo
//
//  Created by Bennett Lee on 2/26/24.
//

import SwiftUI

struct ContentView: View {

    @State var index = 0

    var body: some View {
        TabView(selection: $index) {
            VStack {
                Button("Go to blue") {
                    index = 1
                }
                .font(.title)
            }
            .tag(0)
            .tabItem {
                Label("Red", systemImage: "pencil")
            }

            Color.blue
                .tag(1)
                .tabItem {
                    Label("Blue", systemImage: "eraser")
                }
        }
        .tint(.indigo)
        .padding()
    }
}

#Preview {
    ContentView()
}
