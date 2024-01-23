//
//  LayoutDemo.swift
//  IntroSwiftUI
//
//  Created by Bennett Lee on 1/22/24.
//

import SwiftUI

struct LayoutDemo: View {
    var body: some View {
        HStack (spacing: 20.0) {
            Circle()
                .fill(Color.pink)
                .frame(width: 100.0)
            Circle()
                .fill(Color.green)
                .frame(width: 100.0)
            
        }

    }
}

#Preview {
    LayoutDemo()
}
