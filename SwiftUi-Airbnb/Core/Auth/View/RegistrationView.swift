//
//  RegistrationView.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/20/24.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel = RegistrationViewModel(service: MockAuthService())
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(.airbnbAppIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your full name", text: $viewModel.fullname)
                    .autocorrectionDisabled()
                    .modifier(PrimaryTextFieldModifier())
                
                TextField("Enter your email", text: $viewModel.email)
                    .autocorrectionDisabled()
                    .modifier(PrimaryTextFieldModifier())
                
                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(PrimaryTextFieldModifier())
            }
            
            Button {
                Task { await viewModel.createUser() }
                print("DEBUG: creating account...")
            } label: {
                Text("Create Account")
                    .modifier(PrimaryButtonModifier())
            }
            .padding(.vertical)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.7)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                Text("Already have an account? **Sign In**")
                    .font(.footnote)
                    .padding(.vertical)
            }
        }
    }
}

extension RegistrationView: AuthFormProtocol {
    var formIsValid: Bool {
        return !viewModel.email.isEmpty &&
        viewModel.email.contains("@") &&
        !viewModel.password.isEmpty &&
        !viewModel.fullname.isEmpty &&
        viewModel.password.count > 5
    }
}

#Preview {
    RegistrationView()
}
