//
//  WishlistView.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 3/8/24.
//

import SwiftUI

struct WishlistView: View {
    
    @State private var showLogin = false
    @ObservedObject var authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                
                if authManager.userSessionId == nil {
                    WishlistLoginView(showLogin: $showLogin)
                } else {
                    WishlistEmptyStateView()
                }
            }
            .padding()
            .navigationTitle("Wishlist")
            .sheet(isPresented: $showLogin) {
                LogInView(authManager: authManager)
            }
        }
    }
}

#Preview {
    WishlistView(authManager: AuthManager(service: MockAuthService()))
}
