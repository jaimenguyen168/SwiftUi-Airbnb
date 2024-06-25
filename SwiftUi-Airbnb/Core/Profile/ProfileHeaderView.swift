//
//  ProfileHeaderView.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/22/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 28)
                .fill(.white)
                .frame(width: 300, height: 200)
                .shadow(radius: 10)
            
            VStack(spacing: 12) {
                CircularProfileImageView(size: .xLarge)
                
                VStack {
                    Text("John Doe")
                        .font(.headline)
                    
                    Text("Guest")
                        .font(.footnote)
                }
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}
