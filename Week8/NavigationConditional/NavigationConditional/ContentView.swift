//
//  ContentView.swift
//  NavigationConditional
//
//  Created by Bennett Lee on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State var password = ""
    @State var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                TextField("Password", text: $password)
                Button("Submit") {
                    if password == "Password" {
                        path.append(Color.teal)
                    }
                }
            }
            .navigationDestination(for: Color.self) {
                $0
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
