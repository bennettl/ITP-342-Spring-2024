//
//  ContentView.swift
//  SaveToDocumentsFolder
//
//  Created by Bennett Lee on 2/28/24.
//

import SwiftUI

struct User : Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Load User From Documents Directory") {
                let url = FileManager.default.urls(
                    for: .documentDirectory,
                    in: .userDomainMask
                ).first!

                let fileUrl = "\(url)/user.json"

                do {
                    let data = try Data(contentsOf: URL(string: fileUrl)!)
                    let decoder = JSONDecoder()
                    let user = try decoder.decode(User.self, from: data)
                    print(user.firstName)
                    print(user.lastName)
                } catch {
                    print(error)
                }
            }
            Button("Save User to Documents Folder"){
                let user = User(
                    firstName: "Bennett",
                    lastName: "Lee"
                )

                let encoder = JSONEncoder()
                do {
                    let data = try encoder.encode(user)
                    let str = String(data: data, encoding: .utf8)!
                    saveToDisk(
                        value: str,
                        filename: "user.json"
                    )
                } catch {
                    print(error)
                }

            }

            Button("Save String To Documents Folder") {
                saveToDisk(
                    value: "Here is some data to save",
                    filename: "my-file.txt"
                )
            }
        }
        .padding()
    }

    func saveToDisk(value: String, filename: String) {
        let url = FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask
        ).first!

        print("url \(url)")

        let fileUrl = "\(url)/\(filename)"

        do {
            try value.write(
                to: URL(string: fileUrl)!,
                atomically: true,
                encoding: .utf8
            )
        } catch {
            print(error)
        }
    }
}

#Preview {
    ContentView()
}
