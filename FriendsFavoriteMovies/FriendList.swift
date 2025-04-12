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
        NavigationSplitView {
            List {
                ForEach(friends) { friend in
                    NavigationLink(friend.name) {
                        Text("Details for \(friend.name)")
                            .navigationTitle("Friend")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .navigationTitle("Friends")
        } detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
        }

    }
}

#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
