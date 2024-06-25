//
//  ExploreService.swift
//  SwiftUi-Airbnb
//
//  Created by Dat Nguyen on 3/8/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
