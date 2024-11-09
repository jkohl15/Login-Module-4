//
//  SuccessfulLogin.swift
//  TestLogin
//
//  Created by Jeff Kohl on 11/3/24.
//

import SwiftUI

struct SuccessfulLogin: View {
    
    @EnvironmentObject var avm : AuthenticationViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        Button(action: {
            Task {
                await avm.signOut()
            }
        }) {
            Text("Sign Out")
        }
    }
}

#Preview {
    SuccessfulLogin()
}
