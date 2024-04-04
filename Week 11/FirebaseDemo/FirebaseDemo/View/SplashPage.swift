//
//  SplashPage.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 4/3/24.
//

import SwiftUI
import FirebaseAuth


struct SplashPage: View {
    @State private var email = "test@test.com"
    @State private var password = "Testing123!"
    @StateObject private var userViewModel = UserViewModel()

    var body: some View {
        VStack (spacing: 12.0) {
            TextField("Email", text: $email)
            TextField("Password", text: $password)

            Button("Sign Up") {
                Task {
                    await userViewModel.signUp(email: email, password: password)
                }
            }
            .disabled(email.isEmpty || password.isEmpty)

            Text("or")

            Button("Login") {
                Task {
                    await userViewModel.signIn(email: email, password: password)
                }
            }
        }
        .padding()
    }
}

#Preview {
    SplashPage()
}
