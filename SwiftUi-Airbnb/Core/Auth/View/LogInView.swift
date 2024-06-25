//
//  LogInView.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/20/24.
//

import SwiftUI

struct LogInView: View {
    
    @StateObject var viewModel: LogInViewModel
    @Environment(\.dismiss) var dismiss
    
    private var authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
        self._viewModel = StateObject(wrappedValue: LogInViewModel(authManager: authManager))
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image(.airbnbAppIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("Enter your email", text: $viewModel.email)
                        .autocorrectionDisabled()
                        .modifier(PrimaryTextFieldModifier())
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(PrimaryTextFieldModifier())
                }
                
                NavigationLink {
                    //
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }

                Button {
                    Task {
                        await viewModel.login()
                        dismiss()
                    }
                } label: {
                    Text("Login")
                        .modifier(PrimaryButtonModifier())
                }
                .padding(.vertical)
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0 : 0.7)

                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Don't have an account? **Sign Up**")
                        .font(.footnote)
                        .padding(.vertical)
                }
            }
        }
    }
}

extension LogInView: AuthFormProtocol {
    var formIsValid: Bool {
        return !viewModel.email.isEmpty &&
        viewModel.email.contains("@") &&
        !viewModel.password.isEmpty
    }
}

#Preview {
    LogInView(authManager: AuthManager(service: MockAuthService()))
}
