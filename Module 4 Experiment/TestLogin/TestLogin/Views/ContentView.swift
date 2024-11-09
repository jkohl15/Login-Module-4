//
//  ContentView.swift
//  TestLogin
//
//  Created by Jeff Kohl on 11/3/24.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    
    @EnvironmentObject var avm: AuthenticationViewModel
    
    var body: some View {
        VStack {
            
            if avm.currentUser != nil {
                SuccessfulLogin()
            } else {
                LoginView()
            }
        }
    }
}
  
