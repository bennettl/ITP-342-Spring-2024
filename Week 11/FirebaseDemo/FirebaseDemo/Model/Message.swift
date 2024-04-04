//
//  Message.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 4/1/24.
//

import Foundation
import FirebaseFirestore

struct Message : Codable, Identifiable {

//    @DocumentID var id: String?

    let id : String

    let text: String

    @ServerTimestamp var created: Date?
}
