//
//  CounterForm.swift
//  IntroSwiftUI
//
//  Created by Bennett Lee on 1/22/24.
//

import SwiftUI

struct CounterForm: View {
    @State var counter1 = 0
    @State var counter2 = 0

    var body: some View {
        VStack (spacing: 24) {
            Counter(count: $counter1)
            Counter(count: $counter2)

            Button(action: {

            }, label: {
                Image("this_is_fine")
            })

            Button("Submit Button") {
                // Value for Counter 1
                // Value for Counter 2
                print("Counter 1: \(counter1)")
                print("Counter 2: \(counter2)")
            }
            .font(.largeTitle)
        }
    }
}

#Preview {
    CounterForm()
}
