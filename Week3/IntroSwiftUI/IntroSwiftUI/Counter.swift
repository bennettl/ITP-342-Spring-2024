//
//  Counter.swift
//  IntroSwiftUI
//
//  Created by Bennett Lee on 1/22/24.
//

import SwiftUI

struct Counter: View {
    @Binding var count: Int

    var body: some View {
        VStack {
            Text("Current Count: \(count)")
            Button("Increment Counter") {
                print("Hello")
                count += 1
            }
        }
    }
}

//#Preview {
//    Counter()
//}
