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
                        FriendDetail(friend: friend)
                    }
                }
            }
            .navigationTitle("Friends")
            .toolbar {
                ToolbarItem {
                    Button("Add friend", systemImage: "plus", action: addFriend)
                }
            }
        } detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
        }

    }
    
    private func addFriend() {
       context.insert(Friend("New friend"))
   }
}

#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
