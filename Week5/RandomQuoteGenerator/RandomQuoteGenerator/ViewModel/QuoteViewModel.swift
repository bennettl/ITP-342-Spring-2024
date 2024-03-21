//
//  QuoteViewModel.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/7/24.
//

import Foundation
import Combine

class QuoteViewModel : ObservableObject {

    private let fileUrl: URL
    @Published var currentIndex = 0
    @Published var quotes: [Quote] {
        didSet {
            save()
        }
    }

    var currentQuote : Quote? {
        if quotes.isEmpty {
            return nil
        }

        return quotes[currentIndex]
    }

    init() {
        let url = FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask
        ).first!

        fileUrl = URL(string:"\(url)/quotes.json")!

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

        if let loadedQuotes = load() {
            quotes = loadedQuotes
        }

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


    func update(quote: Quote) {
        let index = quotes.firstIndex {
            $0.id == quote.id
        }

        guard let index else {
            return
        }

        quotes[index] = quote
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

    // Take our array of quotes, encode it to a JSON array, and save to disk
    private func save() {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(quotes)
            try data.write(to: fileUrl)
        } catch {
            print(error)
        }
    }

    private func load() -> [Quote]?{
        do {
            let data = try Data(contentsOf: fileUrl)
            let decoder = JSONDecoder()
            let quotes = try decoder.decode([Quote].self, from: data)
            return quotes
        } catch {
            print(error)
            return nil
        }
    }

}
