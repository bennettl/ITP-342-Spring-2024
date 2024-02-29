//
//  EditQuotePage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/26/24.
//

import SwiftUI

struct EditQuotePage: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: QuoteViewModel

    var quote: Quote?
    @State var author = ""
    @State var message = ""

    var isNew: Bool {
        quote == nil
    }

    var isDisabled: Bool {
        author.isEmpty || message.isEmpty
    }

    init(quote: Quote? = nil){
        self.quote = quote
    }

    var body: some View {
        VStack {
            Spacer()

            TextField("Author", text: $author)
                .padding()
                .background(Color.white)
            
            TextField("Message", text: $message)
                .padding()
//                .background(Color.gray)

            Spacer()
        }
        .padding()
        .toolbar {
            Button("Save") {

                if isNew {
                    viewModel.create(
                        author: author,
                        message: message
                    )
                } else {
                    // Leave this to when we have time... :D JK
                    viewModel.update(
                        quote: .init(
                            id: quote!.id, 
                            author: author,
                            message: message
                        )
                    )
                }
                dismiss()
            }
            .disabled(isDisabled)
        }
        .onAppear{
            author = quote?.author ?? ""
            message = quote?.message ?? ""
        }
    }
}

#Preview {
    NavigationStack {
        EditQuotePage()
            .environmentObject(QuoteViewModel())
    }
}
