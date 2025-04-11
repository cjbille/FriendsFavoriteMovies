//
//  FriendList.swift
//  FriendsFavoriteMovies
//
//  Created by Christopher Bille on 4/10/25.
//

import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        List {
            ForEach(friends) { friend in
                Text(friend.name)
            }
        }
        .task {
            context.insert(Friend("Elena"))
            context.insert(Friend("Roy"))
        }
    }
}

#Preview {
    FriendList()
        .modelContainer(for: Friend.self, inMemory: true)
}
