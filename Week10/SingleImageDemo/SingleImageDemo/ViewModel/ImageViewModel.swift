//
//  ImageViewModel.swift
//  SingleImageDemo
//
//  Created by Bennett Lee on 3/18/24.
//

import Foundation
import Combine

class ImageViewModel : ObservableObject {

    @Published var imageUrl: String? = nil
    @Published var errorMessage: String? = nil

    func getRandomImage() async {
        let url = URL(string:"https://api.unsplash.com/photos/random")!
        
        var request = URLRequest(url: url)
        request.setValue("Client-ID PogBExtEuLXYbPJTMfUi3qT--DNRKluit8dBGbKlsMo", forHTTPHeaderField: "Authorization")

        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            let decoder = JSONDecoder()
            let image = try decoder.decode(UnsplashImage.self, from: data)

            imageUrl = image.urls.regular
        } catch {
            print(error)
            errorMessage = error.localizedDescription
        }

    }
}
