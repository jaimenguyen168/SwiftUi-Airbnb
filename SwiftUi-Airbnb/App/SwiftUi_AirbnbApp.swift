//
//  SwiftUi_AirbnbApp.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 3/7/24.
//

import SwiftUI

@main
struct SwiftUi_AirbnbApp: App {
    
    let authManager = AuthManager(service: AuthService())
    
    var body: some Scene {
        WindowGroup {
            ContentView(authManager: authManager)
        }
    }
}
