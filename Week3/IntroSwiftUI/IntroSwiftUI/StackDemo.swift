//
//  StackDemo.swift
//  IntroSwiftUI
//
//  Created by Bennett Lee on 1/22/24.
//

import SwiftUI

struct StackDemo: View {
    var body: some View {
        VStack(alignment: .center, spacing: 100) {
            Text("Header")
                .padding(.bottom, 100)

            Text("Two")
                .foregroundStyle(Color.white)
                .padding(20)
                .background(Color.red)
                .padding(.bottom, -75.0)

            Text("Three")
        }
        .font(.title)
    }
}

#Preview {
    StackDemo()
}
