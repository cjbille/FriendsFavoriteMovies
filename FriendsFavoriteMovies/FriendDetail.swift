//
//  FriendDetail.swift
//  FriendsFavoriteMovies
//
//  Created by Christopher Bille on 4/14/25.
//

import SwiftUI

struct FriendDetail: View {
    @Bindable var friend: Friend
    var body: some View {
        Form {
            TextField("Name", text: $friend.name)
                .autocorrectionDisabled()
        }
    }
}

#Preview {
    FriendDetail(friend: SampleData.shared.friend)
}
