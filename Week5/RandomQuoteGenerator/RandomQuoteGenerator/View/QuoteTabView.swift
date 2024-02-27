//
//  QuoteTabView.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/26/24.
//

import SwiftUI

struct QuoteTabView: View {
    var body: some View {
        TabView {
            RandomQuotePage()
                .tabItem {
                    Label("Random", systemImage: "pencil")
                }
            QuoteListPage()
                .tabItem {
                    Label("List", systemImage: "eraser")
                }
        }
    }
}

#Preview {
    QuoteTabView()
}
