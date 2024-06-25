//
//  AuthService.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/22/24.
//

import FirebaseAuth

struct AuthService: AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws -> String? {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            return result.user.uid
        } catch {
            throw error
        }
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String? {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            return result.user.uid
        } catch {
            throw error
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
    }
}
