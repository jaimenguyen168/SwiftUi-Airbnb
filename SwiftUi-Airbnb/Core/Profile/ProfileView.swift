//
//  ProfileView.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 3/8/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var showLogin = false
    @ObservedObject var authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        VStack {
            // Profile login
            if authManager.userSessionId == nil {
                ProfileLoginView(showLogin: $showLogin)
            } else {
                ProfileHeaderView()
            }
            
            // Options
            VStack {
                ProfileOptionView(imageName: "gear", title: "Settings")
                ProfileOptionView(imageName: "gear", title: "Accessibility")
                ProfileOptionView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
            
            if authManager.userSessionId != nil {
                Button {
                    authManager.signOut()
                } label: {
                    Text("Log Out")
                        .underline()
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }

        }
        .padding()
        .sheet(isPresented: $showLogin) {
            LogInView(authManager: authManager)
        }
    }
}

#Preview {
    ProfileView(authManager: AuthManager(service: MockAuthService()))
}
