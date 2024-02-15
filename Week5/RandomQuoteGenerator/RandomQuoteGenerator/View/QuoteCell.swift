//
//  QuoteCell.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/14/24.
//

import SwiftUI

struct QuoteCell: View {
    let quote: Quote

    init(_ quote: Quote) {
        self.quote = quote
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(quote.message)
            Text(quote.author)
                .font(.caption)
                .foregroundStyle(Color.teal)
                .bold()
        }
    }
}

#Preview {
    QuoteCell(
        .init(
            id: UUID(),
            author: "Bennett",
            message: "Swift UI is great"
        )
    )
}
