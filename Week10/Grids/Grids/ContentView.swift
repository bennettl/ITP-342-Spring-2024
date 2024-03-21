//
//  ContentView.swift
//  Grids
//
//  Created by Bennett Lee on 3/20/24.
//

import SwiftUI

struct ContentView: View {

    let columns : [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<51) { index in
                    Color.teal
                        .frame(height: 100.0)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
