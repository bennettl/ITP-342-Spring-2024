//
//  ContentView.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 3/27/24.
//

import SwiftUI
import FirebaseAuth

// If the user is not authenticated, show sign up page
// If the user is authenticated, show messages list page

struct ContentView: View {
  
    var isLoggedIn: Bool {
        Auth.auth().currentUser == nil
    }
    
    var body: some View {
        Group {
            if isLoggedIn {
                SplashPage()
            } else {
                MessagesListPage()
            }
        }
    }
}

#Preview {
    ContentView()
}
