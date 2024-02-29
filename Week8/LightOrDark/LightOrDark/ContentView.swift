//
//  ContentView.swift
//  LightOrDark
//
//  Created by Bennett Lee on 2/28/24.
//

import SwiftUI

fileprivate let KeyIsLightMode = "isLightMode"

struct ContentView: View {
    @State var isLightMode = true
    var body: some View {
        VStack {
           Toggle(
            "Light Mode",
            isOn: $isLightMode
           )
        }
        .padding()
        .preferredColorScheme(
            isLightMode ? .light : .dark
        )
        .onChange(of: isLightMode) { _, newValue in
            UserDefaults.standard.setValue(
                newValue, 
                forKey: KeyIsLightMode
            )

        }
        .onAppear {
            isLightMode = UserDefaults.standard
                .bool(forKey: KeyIsLightMode)
        }
    }
}

#Preview {
    ContentView()
}
