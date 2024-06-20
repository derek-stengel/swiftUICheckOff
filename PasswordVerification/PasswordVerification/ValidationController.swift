//
//  ValidationController.swift
//  PasswordVerification
//
//  Created by Derek Stengel on 6/10/24.
//

import Foundation

class ValidationController {
    
    func passwordHasProperNumberOfCharacters(_ password: String) -> Bool {
        return password.count >= 8 && password.count <= 30
    }
    
    func passwordHasLowercaseAndUppercase(_ password: String) -> Bool {
        let lowercaseLetters = CharacterSet.lowercaseLetters
        let uppercaseLetters = CharacterSet.uppercaseLetters
        
        return password.rangeOfCharacter(from: lowercaseLetters) != nil &&
        password.rangeOfCharacter(from: uppercaseLetters) != nil
    }
    
}
