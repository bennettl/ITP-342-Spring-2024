//
//  MessageViewModel.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 4/1/24.
//

import Foundation
import Combine
import FirebaseFirestore

class MessageViewModel : ObservableObject {
   
    func send(with text: String) async {
        let messageCollectionRef = Firestore.firestore().collection("messages")

        do {
            let message = Message(id: UUID().uuidString, text: text)
            let documentRef = try await messageCollectionRef.addDocument(from: message)

            //            let documentRef = try await messageCollectionRef.addDocument(data: [
            //                "content": "Hi"
            //            ])

            print("document created \(documentRef.documentID)")
        } catch {
            print(error)
        }
    }

}
