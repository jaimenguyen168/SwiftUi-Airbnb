//
//  ListingView.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 3/7/24.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            // Image
            ImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // Listing Detail
            HStack(alignment: .top) {
                // Detail
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                    
                    Text("12 mil away")
                        .foregroundStyle(.secondary)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.secondary)
                    
                    HStack {
                        Text("$\(listing.pricePerNight, specifier: "%.2f")")
                            .fontWeight(.semibold)
                        
                        Text("night")
                    }
                }
                
                Spacer()
                
                // Rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("\(listing.rating, specifier: "%.2f")")
                }
            }
            .font(.footnote)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
