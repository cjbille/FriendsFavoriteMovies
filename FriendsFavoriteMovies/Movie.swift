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
    
    init(_ title: String, _ releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
