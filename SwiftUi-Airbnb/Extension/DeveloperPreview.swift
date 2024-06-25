//
//  DeveloperPreview.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 3/8/24.
//

import Foundation

class DeveloperPreview {
    
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "my-profile",
            numOfBedrooms: 4,
            numOfBeds: 3,
            numOfBathrooms: 4,
            numOfGuests: 4,
            pricePerNight: 567.99,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Jaime Nguyen",
            ownerImageUrl: "my-profile",
            numOfBedrooms: 4,
            numOfBeds: 3,
            numOfBathrooms: 4,
            numOfGuests: 4,
            pricePerNight: 567.99,
            latitude: 34.052235,
            longitude: -118.243683,
            imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Los Angeles Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .balcony, .laundry, .pool, .office],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "my-profile",
            numOfBedrooms: 4,
            numOfBeds: 3,
            numOfBathrooms: 4,
            numOfGuests: 4,
            pricePerNight: 567.99,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Jaime Nguyen",
            ownerImageUrl: "my-profile",
            numOfBedrooms: 4,
            numOfBeds: 3,
            numOfBathrooms: 4,
            numOfGuests: 4,
            pricePerNight: 567.99,
            latitude: 34.152900,
            longitude: -118.244700,
            imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Los Angeles Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .balcony, .laundry, .pool, .office],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "my-profile",
            numOfBedrooms: 4,
            numOfBeds: 3,
            numOfBathrooms: 4,
            numOfGuests: 4,
            pricePerNight: 567.99,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        )
    ]
}
