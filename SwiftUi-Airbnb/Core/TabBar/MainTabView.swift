//
//  MainTabView.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 3/8/24.
//

import SwiftUI

struct MainTabView: View {
    
    private let authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView(authManager: authManager)
                .tabItem { Label("Wishlist", systemImage: "heart") }
            
            ProfileView(authManager: authManager)
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabView(authManager: AuthManager(service: MockAuthService()))
}
