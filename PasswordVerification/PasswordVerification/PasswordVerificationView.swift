//
//  PasswordVerificationView.swift
//  PasswordVerification
//
//  Created by Derek Stengel on 6/19/24.
//

import SwiftUI

struct PasswordVerificationView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var passwordMessage: String = ""
    @State private var isPasswordValid: Bool = false
    
    private let validationController = ValidationController()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                SecureField("Password", text: $password, onCommit: validatePassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Text(passwordMessage)
                    .foregroundColor(.red)
                    .padding(.horizontal)
                
                Text("Password must:")
                    .font(.headline)
                    .padding(.top)
                Text("- Be 8-30 characters long")
                Text("- Contain both uppercase and lowercase letters")
                    .padding(.bottom)
                
                NavigationLink(destination: CongratsView(), isActive: $isPasswordValid) {
                    EmptyView()
                }
            }
            .padding()
        }
    }
    
    private func validatePassword() {
        if !validationController.passwordHasProperNumberOfCharacters(password) {
            passwordMessage = "Password must be between 8 and 30 characters."
            isPasswordValid = false
        } else if !validationController.passwordHasLowercaseAndUppercase(password) {
            passwordMessage = "Password must contain both uppercase and lowercase letters."
            isPasswordValid = false
        } else {
            passwordMessage = ""
            isPasswordValid = true
        }
    }
}

struct PasswordVerificationView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordVerificationView()
    }
}

