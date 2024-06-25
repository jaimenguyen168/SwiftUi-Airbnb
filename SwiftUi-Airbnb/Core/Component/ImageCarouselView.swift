//
//  ImageCarouselView.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 3/7/24.
//

import SwiftUI

struct ImageCarouselView: View {
    
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageUrls, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
