//
//  QuoteViewModel.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/7/24.
//

import Foundation
import Combine

class QuoteViewModel : ObservableObject {

    @Published var currentIndex = 0
    var quotes: [Quote]

    var currentQuote : Quote? {
        if quotes.isEmpty {
            return nil
        }

        return quotes[currentIndex]
    }

    init() {
        quotes = [
            Quote(
                id: UUID(),
                author: "Bennett Lee",
                message: "Do not repeat yourself"
            ),
            Quote(
                id: UUID(),
                author: "Carl Sagan",
                message: "We are stardust, something like that..."
            ),
            Quote(
                id: UUID(),
                author: "Shakespear",
                message: "Your behavior hath struck her into amazement and admiration"
            ),
            Quote(
                id: UUID(),
                author: "Amy March",
                message: "I want to be great or nothing"
            ),
            Quote(
                id: UUID(),
                author: "Deborah Mok",
                message: "Delulu is the solulu"
            )
        ]
    }

    func create(author: String, message: String) {
        quotes.append(
            Quote(id: UUID(), author: author, message: message)
        )
        // Functionally the same as above
//        quotes.append(
//            .init(author: author, message: message)
//        )
    }

    func remove(at index: Int) {
        // Early return pattern
        if index < 0 || index >= quotes.count {
            return
        }

        quotes.remove(at: index)
    }

    func randomize() {
        var randomIndex = Int.random(in: 0..<quotes.count)

        while randomIndex == currentIndex {
            randomIndex = Int.random(in: 0..<quotes.count)
        }
        
        currentIndex = randomIndex
    }

}
