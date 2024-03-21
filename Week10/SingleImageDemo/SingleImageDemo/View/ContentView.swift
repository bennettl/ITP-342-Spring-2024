//
//  ContentView.swift
//  SingleImageDemo
//
//  Created by Bennett Lee on 3/18/24.
//

import SwiftUI

struct ContentView: View {

    @StateObject var imageViewModel = ImageViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                if let imageUrl = imageViewModel.imageUrl {
                    AsyncImage(url: URL(string: imageUrl)!)
                        .frame(height: 300.0)
                }

                if let errorMessage = imageViewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundStyle(.red)
                }

            }.toolbar(content: {
                Button("Refresh") {
                    Task {
                        await imageViewModel.getRandomImage()
                    }
                }
            })
            .padding()
            .task {
//                await imageViewModel.getRandomImage()
            }
        }
    }
}

#Preview {
    ContentView()
}
