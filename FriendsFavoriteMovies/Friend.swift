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
    
    init(_ name: String) {
        self.name = name
    }
    
}
