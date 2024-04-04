//
//  UserViewModel.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 4/3/24.
//

import Foundation
import Combine
import FirebaseAuth
import FirebaseFirestore

class UserViewModel : ObservableObject{

    func signUp(email: String, password: String) async {
        do {
            let result = try await Auth.auth().createUser(
                withEmail: email,
                password: password
            )
            let userId = result.user.uid
            let email = result.user.email
            print("userId \(userId) email \(email)")
            
            // Create the document in firestore
//            FireStore.firestore().collection("users").document(userId).setData([
//                "email": email
//            ])

        } catch {
            print(error)
        }
    }

    func signIn(email: String, password: String) async {
        do {
            let result = try await Auth.auth().signIn(
                withEmail: email,
                password: password
            )
            let userId = result.user.uid
            let email = result.user.email
            print("userId \(userId) email \(email)")
        } catch {
            print(error)
        }
    }
}
