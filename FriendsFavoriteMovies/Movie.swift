//
//  Movie.swift
//  FriendsFavoriteMovies
//
//  Created by Christopher Bille on 4/10/25.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var releaseDate: Date
    var favoritedBy = [Friend]()
    static let sampleData = [
        Movie("Amusing Space Traveler 3", Date(timeIntervalSinceReferenceDate: -402_000_000)),
        Movie("Difficult Cat", Date(timeIntervalSinceReferenceDate: -20_000_000)),
    ]
    
    init(_ title: String, _ releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
