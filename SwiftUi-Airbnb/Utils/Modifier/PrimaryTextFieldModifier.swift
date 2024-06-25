//
//  PrimaryTextFieldModifier.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/21/24.
//

import SwiftUI

struct PrimaryTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(.rect(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}


