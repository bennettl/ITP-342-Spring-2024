//
//  RedPage.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 2/26/24.
//

import SwiftUI

let john = User(name: "John")

struct RedPage: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                // Embed destination inside link, DO NOT DO IT, but here for information purposes only
                //                NavigationLink("Post #1") {
                //                    BluePage()
                //                }
                //                .foregroundColor(.white)
                //                .font(.title)
                //                NavigationLink(value: "blue") {
                //                    Text("Go to blue")
                //                        .foregroundStyle(Color.white)
                //                }
                //                .font(.title)

                NavigationLink(value: john) {
                    Text("Go to john's profile page")
                        .font(.title)
                        .foregroundStyle(Color.white)
                }

                Spacer()
            }
            Spacer()
        }.background(
//            Color.red
        )
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save"){

                }
            }
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(systemName: "eraser")
                    Text("John Doe")
                }
            }

            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel"){

                }
            }
        }


    }
}

#Preview {
    NavigationStack {
        RedPage()
    }
}
