//
//  AnimationDemoPage.swift
//  AnimationDemo
//
//  Created by Bennett Lee on 2/12/24.
//

import SwiftUI
import UIKit

fileprivate let ScreenHeight = UIScreen.main.bounds.size.height

fileprivate let Duration = 0.5

struct AnimationDemoPage: View {
    @State var yOffset = 0.0
    @State var isHidden = false

    var body: some View {
        Button {
            animateUp()
        } label: {
            Rectangle()
                .fill(Color.teal)
                .frame(width: 150, height: 150)
                .offset(y: yOffset)
                .opacity(isHidden ? 0 : 1)
        }
    }

    func animateUp(){
        withAnimation(
            .linear(duration: Duration)
        ) {
            yOffset = -ScreenHeight
            isHidden = true
        }
        withAnimation(
            .linear(duration: Duration)
            .delay(Duration)
        ) {
            yOffset = ScreenHeight
        }
        withAnimation(
            .linear(duration: Duration)
            .delay(Duration * 2)
        ) {
            yOffset = 0
            isHidden = false
        }
    }

}

#Preview {
    AnimationDemoPage()
}
