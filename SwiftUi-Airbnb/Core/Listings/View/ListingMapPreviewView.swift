//
//  ListingMapPreviewView.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/19/24.
//

import SwiftUI

struct ListingMapPreviewView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack {
            TabView {
                ForEach(listing.imageUrls, id: \.self) { imageUrl in
                    Image(imageUrl)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Rectangle())
                }
            }
            .frame(height: 200)
            .tabViewStyle(.page)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                    
                    Text("5 nights: Jul 10 - 15")
                        .fontWeight(.ultraLight)
                    
                    Text("**$\(listing.pricePerNight)** night")
                }
                
                Spacer()
                
                Text("\(listing.rating)")
            }
            .font(.footnote)
            .padding(8)
        }
        .background(.white)
        .clipShape(.rect(cornerRadius: 10))
        .padding()
    }
}

#Preview {
    ListingMapPreviewView(listing: DeveloperPreview.shared.listings[1])
}
