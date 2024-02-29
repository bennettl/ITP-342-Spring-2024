//
//  QuoteNavContainer.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/26/24.
//

import SwiftUI

enum Route : Hashable {
    case new
}

struct QuoteNavContainer: View {
    var body: some View {
        NavigationStack {
            QuoteListPage()
                .navigationDestination(for: Route.self) {
                    if $0 == .new {
                        EditQuotePage()
                    }
                }
                .navigationDestination(for: Quote.self) {
                    EditQuotePage(quote: $0)
                }
                
        }
    }
}

#Preview {
    QuoteNavContainer()
        .environmentObject(QuoteViewModel())
}
