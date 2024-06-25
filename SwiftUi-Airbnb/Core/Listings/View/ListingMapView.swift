//
//  ListingMapView.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 6/19/24.
//

import SwiftUI
import MapKit

struct ListingMapView: View {
    
    @State private var cameraPosition: MapCameraPosition
    @State private var selectedListing: Listing?
    @State private var showDetails = false
    
    @Environment(\.dismiss) var dismiss
    
    private let listings: [Listing]
    
    init(listings: [Listing], center: CLLocationCoordinate2D = .losAngeles) {
        self.listings = listings
        
        let coordinateRegion = MKCoordinateRegion(
            center: center,
            latitudinalMeters: 50000,
            longitudinalMeters: 50000)
        
        self._cameraPosition = State(initialValue: .region(coordinateRegion))
    }
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Map(position: $cameraPosition, selection: $selectedListing) {
                    ForEach(listings, id: \.self) { listing in
                        Marker("", coordinate: listing.coordinate)
                            .tag(listing.id)
                    }
                }
                
                if let selectedListing {
                    withAnimation(.bouncy) {
                        ListingMapPreviewView(listing: selectedListing)
                            .onTapGesture { showDetails.toggle() }
                    }
                }
            }
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.down")
                    .foregroundStyle(.black)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                            .shadow(radius: 4)
                    )
                    .padding(.trailing, 32)
                    .padding(.top, 40)
            }
        }
        .fullScreenCover(isPresented: $showDetails) {
            if let selectedListing {
                ListingDetailView(listing: selectedListing)
            }
        }
    }
}

#Preview {
    ListingMapView(listings: DeveloperPreview.shared.listings)
}
