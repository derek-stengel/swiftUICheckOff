//
//  CongratsView.swift
//  PasswordVerification
//
//  Created by Derek Stengel on 6/19/24.
//

import SwiftUI

struct CongratsView: View {
    var body: some View {
        Text("Congrats! You've entered a correct password.")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
    }
}

struct CongratsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratsView()
    }
}

