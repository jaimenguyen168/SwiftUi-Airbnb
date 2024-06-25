//
//  PrimaryButtonModifier.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/21/24.
//

import SwiftUI

struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 350, height: 44)
            .background(Color(.systemPink))
            .clipShape(.rect(cornerRadius: 6))
    }
}
