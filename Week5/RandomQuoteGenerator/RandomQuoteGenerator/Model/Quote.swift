//
//  Quote.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/7/24.
//

import Foundation

struct Quote : Identifiable, Hashable {
    let id: UUID
    let author: String
    let message: String

}

