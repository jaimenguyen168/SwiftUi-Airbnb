//
//  AuthServiceProtocol.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/22/24.
//

import Foundation

protocol AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws -> String?
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String?
    func signOut()
}
