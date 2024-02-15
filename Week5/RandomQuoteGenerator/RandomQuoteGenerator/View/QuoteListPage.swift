//
//  QuoteListPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/14/24.
//

import SwiftUI

struct QuoteListPage: View {
    @StateObject var viewModel = QuoteViewModel()

    var body: some View {
        List(viewModel.quotes) {
            QuoteCell($0)
        }
    }
}

#Preview {
    QuoteListPage()
}

