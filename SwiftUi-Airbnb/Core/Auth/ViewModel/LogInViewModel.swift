//
//  LogInViewModel.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/20/24.
//

import Foundation

class LogInViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var uid: String?
    
    private let authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    func login() async {
        do {
            try await authManager.login(withEmail: email, password: password)
        } catch {
            print("DEBUG: Failed to log in with error \(error.localizedDescription)")
        }
    }
}
