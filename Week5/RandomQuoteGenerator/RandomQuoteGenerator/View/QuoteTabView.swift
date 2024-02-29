//
//  QuoteTabView.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/26/24.
//

import SwiftUI

struct QuoteTabView: View {
    @StateObject var viewModel = QuoteViewModel()

    var body: some View {
        TabView {
            RandomQuotePage()
                .tabItem {
                    Label("Random", systemImage: "pencil")
                }
            QuoteNavContainer()
                .tabItem {
                    Label("List", systemImage: "eraser")
                }
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    QuoteTabView()
}
