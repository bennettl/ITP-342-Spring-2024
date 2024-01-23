//
//  USCLabel.swift
//  IntroSwiftUI
//
//  Created by Bennett Lee on 1/22/24.
//

import SwiftUI

struct USCLabel: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.largeTitle)
            .foregroundStyle(Color.white)
            .padding()
            .background(Color.red)
    }
}

#Preview {
    VStack {
        USCLabel(title: "USC is awesome")
        USCLabel(title: "ITP 342 is awesome")
        USCLabel(title: "Please try out ITP 341")
    }
}
