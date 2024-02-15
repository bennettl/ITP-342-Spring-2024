//
//  ContentView.swift
//  GesturesDemo
//
//  Created by Bennett Lee on 2/7/24.
//

import SwiftUI

struct ContentView: View {

    @State var color = Color.teal

    var body: some View {
        VStack {

            Circle()
                .fill(color)
                .onTapGesture(count: 2) {
                    print("hello")
                    color = Color.red
                }


        }
        .padding()
    }
}

#Preview {
    ContentView()
}
