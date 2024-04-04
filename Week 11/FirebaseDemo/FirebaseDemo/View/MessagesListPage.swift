//
//  MessagesListPage.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 4/3/24.
//

import SwiftUI
import FirebaseFirestore

struct MessagesListPage: View {
    @StateObject var viewModel = MessageViewModel()
    @State var text = ""

    @FirestoreQuery(
        collectionPath: "messages",
        predicates: [
            .order(by: "created", descending: false),
        ]
    ) var messages: [Message]

    var body: some View {
        NavigationStack {
            VStack {
                // Messages
                List {
                    ForEach(messages) { message in
                        VStack (alignment: .leading) {
                            Text(message.text)
                            if let created = message.created {
                                Text(created.formatted(.relative(presentation: .named)))
                                    .font(.caption)
                            }
                        }
                    }
                }
                .listStyle(.plain)

                HStack {
                    TextField("Say something...", text: $text)
                    Button("Send") {
                        Task {
                            await viewModel.send(with: text)
                            text = ""
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Messages")
        }
    }

}

#Preview {
    MessagesListPage()
}
