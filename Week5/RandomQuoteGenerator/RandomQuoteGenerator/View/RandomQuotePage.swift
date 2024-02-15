//
//  RandomQuotePage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/7/24.
//

import SwiftUI

struct RandomQuotePage: View {
    @StateObject var quoteViewModel = QuoteViewModel()

    var body: some View {
        VStack(spacing: 12) {
            if let quote = quoteViewModel.currentQuote {
                Text(quote.message)
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Text(quote.author)
            }

            Button("Generate") {
                quoteViewModel.randomize()
            }
            .font(.title)
        }
        .onAppear {
            quoteViewModel.randomize()
        }
    }
}

#Preview {
    RandomQuotePage()
}
