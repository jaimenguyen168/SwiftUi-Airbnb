//
//  MockAuthService.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/22/24.
//

import Foundation

struct MockAuthService: AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws -> String? {
        return NSUUID().uuidString
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String? {
        return NSUUID().uuidString
    }
    
    func signOut() {}
}
