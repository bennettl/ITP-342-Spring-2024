//
//  ContentView.swift
//  SaveToDocumentsFolder
//
//  Created by Bennett Lee on 2/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Save To Documents Folder") {
            let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

            print("url \(url)")

            let fileUrl = "\(url)/my-file.txt"

            let data = "Here is some data to save"

            do {
                try data.write(
                    to: URL(string: fileUrl)!,
                    atomically: true,
                    encoding: .utf8
                )
            } catch {
                print(error)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
