//
//  ContentView.swift
//  PhotosDemo
//
//  Created by Bennett Lee on 3/25/24.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    @State var avatarItem: PhotosPickerItem?
    @State var avatarImage: Image?

    var body: some View {
        VStack {
            PhotosPicker("Select Avatar", selection: $avatarItem, matching: .images)

            if let avatarImage {
                avatarImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
        }
        .padding()
        .onChange(of: avatarItem) { oldValue, newValue in
            // Convert PhotosPickerItem > Image
            guard let newValue else {
                return
            }

            Task {
                do {
                    guard let data = try await newValue.loadTransferable(type: Data.self) else {
                        print("cannot convert photo item to data")
                        return
                    }
                    guard let uiImage = UIImage(data: data) else {
                        print("cannot load ui image")
                        return
                    }

                    avatarImage = Image(uiImage: uiImage)

                } catch{
                    print(error)
                }

            }
        }
    }
}

#Preview {
    ContentView()
}
