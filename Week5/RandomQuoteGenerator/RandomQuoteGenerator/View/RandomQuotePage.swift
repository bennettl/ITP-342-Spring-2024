//
//  RandomQuotePage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/7/24.
//

import SwiftUI

struct RandomQuotePage: View {
    @EnvironmentObject var viewModel: QuoteViewModel

    var body: some View {
        VStack(spacing: 12) {
            if let quote = viewModel.currentQuote {
                Text(quote.message)
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Text(quote.author)
            }

            Button("Generate") {
                viewModel.randomize()
            }
            .font(.title)
        }
        .onAppear {
            viewModel.randomize()
        }
    }
}

#Preview {
    RandomQuotePage()
        .environmentObject(QuoteViewModel())

}
