//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by Christopher Bille on 4/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                Text("Friends")
            }
            Tab("Movies", systemImage: "film.stack") {
                Text("Movies")
            }
        }
    }
}

#Preview {
    ContentView()
}
