//
//  ContentView.swift
//  AnimationDemo
//
//  Created by Bennett Lee on 2/12/24.
//

import SwiftUI

struct ContentView: View {

    @State var fontSize = 200.0
    @State var color = Color.pink

    var body: some View {
        VStack {
            Button {
                withAnimation(
                    .easeInOut(duration: 1.0)
                    .repeatCount(100)
                ) {
                    fontSize = 250
                    color = Color.teal
                }
            } label: {
                Image(systemName: "heart.fill")
                    .foregroundStyle(color)
                    .font(.system(size: fontSize))

//                Circle()
//                    .fill(Color.teal)
//                    .frame(width: 150)
//                    .scaleEffect(scale)
//                    .animation(
//                        .easeIn.repeatCount(3), 
//                        value: scale
//                    )
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
