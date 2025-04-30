//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by Christopher Bille on 4/10/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var favoriteMovie: Movie?
    static let sampleData = [
        Friend("Elena"),
        Friend("Graham"),
        Friend("Mayuri"),
        Friend("Rich"),
        Friend("Rody")
    ]
    
    init(_ name: String) {
        self.name = name
    }
}
