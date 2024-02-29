//
//  QuoteListPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/14/24.
//

import SwiftUI

struct QuoteListPage: View {
    @EnvironmentObject var viewModel: QuoteViewModel

    var body: some View {
        List(viewModel.quotes) { quote in
            NavigationLink(value: quote) {
                QuoteCell(quote)
            }
        }
        .toolbar {
            NavigationLink("New", value: Route.new)
        }
        .navigationTitle("Quote")
    }
}

#Preview {
    NavigationStack{
        QuoteListPage()
    }
        .environmentObject(QuoteViewModel())
}

