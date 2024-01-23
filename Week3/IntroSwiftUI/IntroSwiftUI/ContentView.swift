//
//  ContentView.swift
//  IntroSwiftUI
//
//  Created by Bennett Lee on 1/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello there")
            .font(.system(size: 52.0))
            .frame(width: 350)
            .background(Color.pink)
            .foregroundStyle(Color.green)
            .border(.black)
            .bold()
            .italic()

    }
}

#Preview {
    ContentView()
}
