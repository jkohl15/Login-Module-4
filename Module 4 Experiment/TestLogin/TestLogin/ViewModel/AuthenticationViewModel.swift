//
//  AuthenticationViewModel.swift
//  TestLogin
//
//  Created by Jeff Kohl on 11/3/24.
//

import Foundation
import FirebaseAuth

class AuthenticationViewModel: ObservableObject {
    
    @Published var email = "jak0097@auburn.edu"
    @Published var password = "wareagle"
    @Published var currentUser : FirebaseAuth.User? = nil
    @Published var currentlyLoggedIn = false
    
    init() {
            self.currentUser = Auth.auth().currentUser
    }
    
    func createUser() async {
        do {
            try await Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                print(authResult)
                self.currentUser = authResult?.user
                print("Successful")
            }
        } catch{
            print("Unsuccessful")
        }
    }

    func signIn() async {
            do {
                try await Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                    print(authResult)
                    self.currentUser = authResult?.user
                    print("Successful")
                }
            } catch{
                print("Unsuccessful")
            }
        print(currentlyLoggedIn)
    }

        
    func signOut()  {
        do {
            try Auth.auth().signOut()
            self.currentUser = nil
        } catch{
        }
    }
    
}
