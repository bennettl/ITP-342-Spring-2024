//
//  UserProfileView.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 2/26/24.
//

import SwiftUI

struct User: Hashable {
    let name: String
}

struct UserProfileView: View {
    @Environment(\.dismiss) private var dismiss

    let user: User

    var body: some View {
        VStack {
            Text("Hello \(user.name)")
                .font(.title)

            Button("Go Back") {
                dismiss()
            }
            
            Text("Friends")

            NavigationLink(value: User(name: "Kyle")){
                Text("Kyle's profile")
                    .foregroundStyle(.white)
                    .font(.title)
            }
        }
    }
}

#Preview {
    UserProfileView(user: User(name: "Amy"))
}
